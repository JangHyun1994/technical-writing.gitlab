## Technical Writer Team Onboarding

## Manager tasks

1. [ ] Manager: Request that new team member be added to `docs@gitlab.com` email group and `@docsteam` user group on Slack (they will then automatically be added to `#docs`, `#docs-team`, and `#docs-comments`).
1. [ ] Manager: Add the new team member to the [`gl-docsteam` group](https://gitlab.com/groups/gl-docsteam/-/group_members) on GitLab.com.
1. [ ] Manager: Determine and assign secondary group for shadowing.
1. [ ] Manager: Determine and assign group for trainee (i.e. to work toward being assigned as its TW).
1. [ ] Manager: Determine and schedule further group assignments.

## Team Member tasks

### Week 1-2

1. [ ] New team member: Say hi to the rest of the Technical Writing team in #docs-team on Slack. You can tell us a bit more about yourself via the [Team Agenda doc](https://docs.google.com/document/d/1pIyodaFXJXIgXDSOqqE1i15fWBVr2hcxN45VzgsVRJY/edit) and then 'live' during the first team meeting you're able to attend.
1. [ ] New team member: Also on Slack: join #docs and #docs-team-onboarding. In the latter, ask any questions that arise during your onboarding. Don't worry about asking seemingly basic questions; everyone has joined the team bringing their own knowledge and experience, and some of our practices may not be obvious or documented. Please improve our onboarding or other process docs at every chance you get via MRs, issues, or ideas raised in the Slack channel.
1. [ ] New team member: Read the following to become familiar with how technical writing is done at GitLab:
   1. [ ] [Technical Writing Handbook](https://about.gitlab.com/handbook/product/technical-writing/).
   1. [ ] [GitLab Documentation guidelines](https://docs.gitlab.com/ce/development/documentation/index.html) and the various pages linked from the introduction. Note that there are [Company writing style guidelines](https://about.gitlab.com/handbook/communication/#writing-style-guidelines) in addition to our Documentation style guide.
      1. [ ] Per <https://docs.gitlab.com/ee/development/documentation/#source-files-and-rendered-web-locations> begin to familiarize yourself with the `gitlab` project's `doc` directory.
      1. [ ] In addition to the projects where content is maintained (`gitlab`, `runner`, etc.), take a look at two other key projects that the team uses:
         - <https://gitlab.com/gitlab-org/technical-writing> for process issues
         - <https://gitlab.com/gitlab-org/gitlab-docs> for doc site issues (front end, back end, CI, etc.)
   1. [ ] New team member: Read the processes for [GitLab Release Posts](https://about.gitlab.com/handbook/marketing/blog/release-posts/), [UX design](https://about.gitlab.com/handbook/engineering/ux/ux-designer/#working-on-issues), and [Product development](https://about.gitlab.com/handbook/product-development-flow/), noting the mentions of "documentation" and "technical writer"/"technical writing" there. For the Release Post, reviews of each feature's details are reviewed by Technical Writing. This is only specified in the [MR template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md), not yet in the Handbook page.
1. [ ] After getting set up locally with Git (per general Onboarding instructions) perform the Nanoc static site generator installation/configuration per <https://gitlab.com/gitlab-com/gitlab-docs/>. This will prepare local directories for you to work on the /doc(s) content within each GitLab repository and locally build the documentation site to preview your changes.
1. [ ] Learn about Danger checks, which will fail pipelines for commit messages that are too long or break other rules, or auto-reply on issues missing certain labels, etc. Rules are defined by the paths [here](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/Dangerfile), with the code for each rule (each DangerFile) located [here](https://gitlab.com/gitlab-org/gitlab-ce/tree/master/danger).
1. [ ] Review and bookmark the [list](https://about.gitlab.com/handbook/engineering/projects/) of all the Projects managed by GitLab Engineering, noting that the Technical Writing team is not involved in most of them.
1. [ ] The Technical Writing team uses the Geekbot app in Slack to run asynchronous standups, which include the 'Morning Stretch' and 'Wednesday Weekly' questions. Ask your onboarding buddy who can add you to the application.
1. [ ] If you want to start "feeling productive" beyond your training, look at our documentation issues with the [_Good for 1st time contributors_](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Good%20for%201st%20time%20contributors&label_name%5B%5D=documentation) label.

In the following sections, you are asked to link to issues and MRs you are assigned or you create. Edit the issue and include those links as soon as they exist; don't wait for the end of the milestone.

### First release - Shadow stage groups

1. [ ] New team member: For the first release cycle that begins after your start date (i.e. the first 18th), **shadow** your buddy's work in [their most active Stage Group], plus one other stage group/writer, decided with your manager and the team and reflected in the [Group-level technical writing shadows, trainees, and coaches](https://docs.google.com/spreadsheets/d/17KULdrZZpUPFMp-vYhw3fErlit9oD99Yh6L60aMsiyc/) sheet. The technical writers will proactively share relevant issues, merge requests, and communications with you by creating/using a #tw-onboarding-<groupname> channel, and answer questions you have that arise in this context.
1. [ ] New team member: Read about all stages and groups, and discuss with your manager whether there is a particular group that will need your coverage as technical writer, or multiple groups you may be interested in.
1. [ ] New team member: List group 1 here:
1. [ ] New team member: List group 2 here:
1. [ ] New team member: Link to any issues you are assigned here:
1. [ ] New team member: Link to any merge requests you are assigned here:

### Second release - Trainee

1. [ ] New team member: For the second release cycle that begins after your start date (i.e. the second 18th), unless your manager extends the shadowing phase, act as a trainee on a single Group as assigned by your manager. The intent is to take on the group as its technical writer as of the next release. List the group name here: . The technical writer who is assigned to that Group will assign substantial parts of the work to you for this group (roughly half of the groups's reviews of MRs with docs, UI text, and release post content; a small but substantial documentation authoring project; a few minor doc improvement projects/fixes).
1. [ ] New team member: Get to know the group: read about the features, read the docs, try some of the features, review the group's vision page, review its docs-only issue board, read all the docs applicable to it, and set up a meeting with the PM to get to know them, their priorities, and how they'd recommend staying in sync each month about docs-only issue priorities on the board (and otherwise working together); any major doc needs on the horizon.
1. [ ] New team member: Raise one or more issues and one MR as a result of your reading of the docs and link them here, being sure to use the appropriate stage, group, `documentation`, `docs-only`, and `Technical Writing` labels:  
1. [ ] New team member: Link here to any issues you are assigned as part of the group for this milestone:
1. [ ] New team member: Link here to any other merge requests you are assigned or authored here as part of the group:
1. [ ] New team member: Link here to other issues you are assigned or MRs you author or review that do not pertain to the group, if any:
1. [ ] New team member: Plan to tackle one or more docs-only issues for this group during the next milestone. Get feedback and agreement from the PM and your manager. Link the issue(s) here:

The Trainee phase may be extended by an additional milestone at the discretion of the manager.

### Third release - Assigned with developer permissions and coach

1. [ ] New team member: For the third release cycle, you assume the full role of technical writer for the group, except that the former TW assigned to the group is now the coach, who will review all your work (including reviews you perform of other authors) before it is merged. They may share the burden of these reviews with other technical writers.
1. [ ] New team member: Submit an access request to become a maintainer for the `gitlab` project using the Single person access request template here <https://gitlab.com/gitlab-com/access-requests/issues/new> and tag your manager. Going forward, if the manager approves the MR, you'll be able to merge content without a coach as the technical writer for the group. Otherwise, your developer permissions and Coach collaboration may continue through another release.
1. [ ] New team member: Link here to other issues you are assigned or MRs you author or review that do not pertain to the group, if any:
