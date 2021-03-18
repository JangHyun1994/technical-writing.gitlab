## Technical Writing Manager onboarding

Welcome to the Technical Writing team! As a new GitLab team member, this issue will help you become immersed in your role as a Technical Writing Manager.

### Getting questions answered

If you have questions, don't hesitate to reach out to your UX buddy, your manager, or the Technical Writing team. We have several [Slack channels](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#slack-channels) you'll want to join and use in your new role.

### Onboarding expectations

Your onboarding doesn't have a scheduled end date. Just focus on getting comfortable with GitLab and getting to know your colleagues.

### Company

GitLab is a special place with a unique culture. We document everything. Most of the information you'll need is available in the [GitLab Handbook](https://about.gitlab.com/handbook/). We view it as our single source of truth (SSOT).

### Onboarding steps

To complement your GitLab onboarding issue, completing the following tasks will help with your your Technical Writing Manager duties:

- [ ] Say "hi" to the rest of the Technical Writing team in the #tw-team channel in Slack. Tell us a bit more about yourself by using the [Team Agenda doc](https://docs.google.com/document/d/1XRyVjR5G21Amq4QqJs9jbV0BVQquiBAyPR257-hT1JY/edit), and then during the first team meeting you're able to attend.
- [ ] Read the [Technical Writing Handbook](https://about.gitlab.com/handbook/product/technical-writing/).
- [ ] The Technical Writing team uses the Geekbot app in Slack to run asynchronous standups, which include the 'Morning Stretch' and 'Wednesday Weekly' questions. Ask your onboarding buddy who can add you to the application.
- [ ] Submit an access request to become a maintainer for these projects:
   - [`gitlab`](https://gitlab.com/gitlab-org/gitlab)
   - [`omnibus-gitlab`](https://gitlab.com/gitlab-org/omnibus-gitlab)
   - [`charts/gitlab`](https://gitlab.com/gitlab-org/charts/gitlab)
   - The `gitlab-runner` group [`runner-docs-maintainers`](https://gitlab.com/groups/gitlab-com/runner-docs-maintainers/-/group_members?sort=access_level_desc).
   - [`gitlab-development-kit`](https://gitlab.com/gitlab-org/gitlab-development-kit) Use the [Single person access request template](https://gitlab.com/gitlab-com/access-requests/issues/new) and tag your manager.
- [ ] Submit an MR to add yourself as a `docs.gitlab.com` administrator to the Google Search Console. Follow the instructions to add an [HTML `meta` tag](https://support.google.com/webmasters/answer/9008080?hl=en&ref_topic=9455938#zippy=%2Chtml-tag):

  1. Go to <https://search.google.com/search-console>.
  1. In **URL Prefix**, enter `https://docs.gitlab.com` and select **Continue**.
  1. Expand the **HTML Tag** section, and copy the code given.
  1. Open an MR to add the tag and your name to the list at <https://gitlab.com/gitlab-org/gitlab-docs/-/blob/4b87b706ee1f32d2fa25e59d604750ca408f2359/layouts/head.html#L51>.
  1. Submit the MR to your manager for approval and merge.

### Reference information

Make note of the following reference links and items of information, which may be helpful in your role.

- [GitLab Documentation guidelines](https://docs.gitlab.com/ee/development/documentation/index.html)
- [Company writing style guidelines](https://about.gitlab.com/handbook/communication/#writing-style-guidelines)
- Documentation Style Guide
- Terminology
  - Merge requests - These are also commonly called _pull requests_ in the industry. This is commonly contracted to _MR_.
- GitLab repository reference. It can be helpful to [star](https://docs.gitlab.com/ee/user/project/working_with_projects.html#star-a-project) these in GitLab for quick access.
  - <https://gitlab.com/gitlab-org/gitlab>: Create issues or MRs here for documentation and UI text relating to the main GitLab application. Documentation is located in the `/doc` directory.
  - <https://gitlab.com/gitlab-org/technical-writing>: Create Technical Writing team process issues here.
  - <https://gitlab.com/gitlab-org/gitlab-docs>: Create issues or MRs here that relate to work being done specifically on the docs.gitlab.com website infrastruction (including the front end, back end, and CI, but excluding product documentation content).
  - <https://gitlab.com/gitlab-com/www-gitlab-com>: Create issues and MRs here for updating any resource on <about.gitlab.com>, including the GitLab Handbook.
  - <https://gitlab.com/gitlab-org/omnibus-gitlab>: Create issues or MRs regarding GitLab Omnibus, the primary installation method for GitLab in self-managed environments.
- [GitLab Release Posts](https://about.gitlab.com/handbook/marketing/blog/release-posts/)
- [UX design](https://about.gitlab.com/handbook/engineering/ux/ux-designer/#working-on-issues)
- [Product development](https://about.gitlab.com/handbook/product-development-flow/)
- Danger checks, which fails pipelines for commit messages that are too long or break other rules, or auto-reply on issues missing certain labels. Rules are defined by the paths [here](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/Dangerfile), with the code for each rule (each DangerFile) located [here](https://gitlab.com/gitlab-org/gitlab-ce/tree/master/danger).

### Manager tasks

The manager for the team member being onboarded must complete these tasks:

- [ ] Request that new team member be added to `docs@gitlab.com` and `ux-department@gitlab.com` email groups, and `@docsteam` user group in Slack.
- [ ] Ensure the new team member is added to the following Slack channels:
   - `#docs`
   - `#docs-comments`
   - `#docs-processes`
   - `#docs-tooling`
   - `#tw-team`
   - `#tw-social`
   - `#tw_leadership`
- [ ] Add the new team member to the [`gl-docsteam` group](https://gitlab.com/groups/gl-docsteam/-/group_members) on GitLab.com.

/label ~"onboarding" ~"Technical Writing"

/confidential
