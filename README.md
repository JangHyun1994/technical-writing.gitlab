# Technical Writing team project

The [Technical Writing team](https://about.gitlab.com/handbook/engineering/ux/technical-writing/)
project contains:

- Epics, issues, and the roadmap for the Technical Writing team and GitLab
  documentation.
- Issues related to team management and technical writing discussions, including
  site design, information architecture, the GitLab style guide, and content
  design.
- Team-specific onboarding resources.

## Automatically create an issue based on a template

You can use the [`scripts/create_issue_from_template.rb`](scripts/create_issue_from_template.rb)
script to automatically create issues from templates.

To automatically create an issue:

1. Add a new issue template under `.gitlab/issue_templates`.
1. Edit [`.gitlab-ci.yml`](.gitlab-ci.yml) and add a job to
   create the issue. It should look like:

   ```yaml
   create_monthly_issue:
     variables:
       ISSUE_TEMPLATE: "issue_template_filename.md"
       ISSUE_TITLE: "An issue title containing the <upcoming_milestone>"
     extends: .common
   ```

   - `ISSUE_TEMPLATE`: the template filename to use. Don't forget the `.md` extension.
   - `ISSUE_TITLE`: the title of the issue. It can optionally contain the
     `<upcoming_milestone>` stanza which will be automatically replaced by the
     upcoming milestone as defined in the `gitlab-org` group milestones.

1. Add a [new schedule](https://gitlab.com/gitlab-org/technical-writing/-/pipeline_schedules/new):
   1. Add a description.
   1. Set an interval pattern. For example, to create the issue on the 15th of
      every month, select the custom syntax, and set it to `0 0 15 * *`.
   1. Add a variable with:
      - key: `ISSUE_TEMPLATE_SCHEDULE`
      - value: the filename of the issue template, for example `tw-milestone-plan.md`
   1. Select **Save pipeline schedule**.

The next time the schedule runs, it will match the `ISSUE_TEMPLATE` variable
you set in `.gitlab-ci.yml` and the relevant job will run.
