#!/usr/bin/env ruby
#
# Automatically create an issue based on the TW milestone planning template.
# Make sure to add the GITLAB_API_PRIVATE_TOKEN in the project's CI/CD variables.
#
# frozen_string_literal: true

require 'gitlab'
require 'httparty'

if ARGV.length < 2
  puts 'Too few arguments. You need to provide the template name and the issue title.'
  puts
  puts 'Usage:'
  puts "  #{File.basename(__FILE__)} <issue_template> <issue_title>"
  puts
  puts 'Example:'
  puts "  #{File.basename(__FILE__)} tw-milestone-plan.md \"Technical Writing milestone plan for <upcoming_milestone>\""
  exit
end

# rubocop:disable Layout/BeginEndAlignment
def upcoming_milestone
  @upcoming_milestone ||= begin
                            url = 'https://gitlab.com/api/v4/groups/9970/milestones?state=active&per_page=100'
                            headers = { 'PRIVATE-TOKEN' => ENV['GITLAB_API_PRIVATE_TOKEN'] }
                            response = HTTParty.get(url, headers: headers).parsed_response

                            current_milestone = response.detect do |m|
                              (Date.parse(m['start_date'])..Date.parse(m['due_date'])).cover?(Date.today)
                            end

                            date = Date.parse(current_milestone['due_date']) + 1

                            response.detect do |m|
                              (Date.parse(m['start_date'])..Date.parse(m['due_date'])).cover?(date)
                            end
                          end
end
# rubocop:enable Layout/BeginEndAlignment

# The first argument of the script is the filename of the template
template = ".gitlab/issue_templates/#{ARGV[0]}"

# The second argument of the script is the issue title.
# If there's an <upcoming_milestone> in the issue title, replace it with the
# method that will auto-populate that value.
issue_title = ARGV[1].gsub('<upcoming_milestone>', upcoming_milestone['title'].to_s)

description = File.read(template)

# Take the project ID from the CI_PROJECT_ID predefined variable
project_id = ENV['CI_PROJECT_ID']

gl = Gitlab.client(endpoint: 'https://gitlab.com/api/v4', private_token: ENV['GITLAB_API_PRIVATE_TOKEN'])

gl.create_issue(project_id, issue_title, { description: description })
