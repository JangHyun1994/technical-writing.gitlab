#!/usr/bin/env ruby
# frozen_string_literal: true
#
# Automatically create an issue based on the TW milestone planning template.
# Make sure to add the GITLAB_API_PRIVATE_TOKEN in the project's CI/CD variables.
#

require 'gitlab'
require 'httparty'

def upcoming_milestone
  @upcoming_milestone ||= begin
    url = "https://gitlab.com/api/v4/groups/9970/milestones?state=active&per_page=100"
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

template = '.gitlab/issue_templates/tw-milestone-plan.md'
description = File.read(template)
issue_title = "Technical Writing milestone plan for #{upcoming_milestone['title']}"

# Take the project ID from the CI_PROJECT_ID predefined variable
project_id = ENV['CI_PROJECT_ID']

gl = Gitlab.client(endpoint: 'https://gitlab.com/api/v4', private_token: ENV['GITLAB_API_PRIVATE_TOKEN'])

gl.create_issue(project_id, issue_title, { description: description })
