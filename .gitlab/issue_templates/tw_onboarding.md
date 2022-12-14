## Technical Writing team onboarding

### Manager tasks

The manager for the person being onboarded must complete these tasks:

1. [ ] On the second day, a [role based entitlement Access Request](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/baseline-entitlements/#role-entitlements-for-a-specific-job) will be created automatically for the new team member and you'll be tagged in it. In the issue, make sure the team member is added to:
   - `docs@gitlab.com` and `ux-department@gitlab.com`.
   - `@docsteam` user group in Slack (they'll be added to `#docs`, `#docs-team`, and `#docs-comments`).
   - [`gl-docsteam` group](https://gitlab.com/groups/gl-docsteam/-/group_members) on GitLab.com.
1. [ ] Add the new team member as a Direct member of of the [`gitlab-ux` sub-group](https://gitlab.com/groups/gitlab-com/gitlab-ux/-/group_members?with_inherited_permissions=exclude).
1. [ ] Add the new team member to the [`ux-retrospectives` project members](https://gitlab.com/gl-retrospectives/ux-retrospectives/-/project_members)
1. [ ] Determine and assign secondary group for shadowing.
1. [ ] Determine and assign group for trainee (for example, to work towards
   being assigned as its technical writer).
1. [ ] Determine and schedule further group assignments.
1. [ ] Add the new team member to the following files:
   - [`sites/handbook/source/includes/product/_categories-names.erb`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/handbook/source/includes/product/_categories-names.erb)
   - [`sites/handbook/source/handbook/product/ux/technical-writing/index.html.md.erb`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/handbook/source/handbook/product/ux/technical-writing/index.html.md.erb)
   - [`sites/handbook/source/includes/stages/tech-writing.html.haml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/handbook/source/includes/stages/tech-writing.html.haml)
1. [ ] Add the new team member as an assignee in the [TW milestone plan](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/.gitlab/issue_templates/tw-milestone-plan.md) template.

### Team member tasks

Welcome to the Technical Writing team! Here are your technical writing-related onboarding tasks:

#### Week 1-2

1. [ ] Say "hi" to the rest of the Technical Writing team in the #tw-team
   channel in Slack. Tell us a bit more about yourself by using the
   [Team Agenda doc](https://docs.google.com/document/d/1XRyVjR5G21Amq4QqJs9jbV0BVQquiBAyPR257-hT1JY/edit),
   and then during the first team meeting you're able to attend.
1. [ ] Join the team's [Slack channels](https://about.gitlab.com/handbook/product/ux/technical-writing/#slack-channels),
   and #docs-team-onboarding. In the latter channel, ask any questions that
   arise during your onboarding. Don't worry about asking seemingly basic
   questions; everyone has joined the team bringing their own knowledge and
   experience, and some of our practices may not be obvious or documented.
   You can improve our onboarding (or other process documentation) by creating
   MRs, issues, or mentioning ideas in the Slack channel.
1. [ ] Read the following to become familiar with how technical writing is done
   at GitLab:
   - [ ] [Technical Writing Handbook](https://about.gitlab.com/handbook/product/technical-writing/).
   - [ ] Successfully complete the [GitLab Technical Writing Fundamentals](https://gitlab.edcast.com/pathways/ECL-02528ee2-c334-4e16-abf3-e9d8b8260de4) course.
   - [ ] [GitLab Documentation guidelines](https://docs.gitlab.com/ce/development/documentation/index.html)
     and the various pages linked from the introduction. Note that there are
     [Company writing style guidelines](https://about.gitlab.com/handbook/communication/#writing-style-guidelines)
     in addition to our Documentation Style Guide.
      - [ ] Per <https://docs.gitlab.com/ee/development/documentation/#source-files-and-rendered-web-locations>,
        begin to familiarize yourself with the `gitlab` project's `doc`
        directory.
      - [ ] In addition to the projects where content is maintained (like
        `gitlab` and `runner`), review these key projects the team uses:
        - <https://gitlab.com/gitlab-org/technical-writing>: Process issues.
        - <https://gitlab.com/gitlab-org/gitlab-docs>: Documentation site
          issues (including the frontend, backend, and CI).
   - [ ] Review these processes, noting the mentions of "documentation" and
     "technical writer"/"technical writing":
     - [GitLab Release Posts](https://about.gitlab.com/handbook/marketing/blog/release-posts/#tw-lead)
     - [UX design](https://about.gitlab.com/handbook/product/ux/product-designer/#partnering-with-technical-writers)
     - [Product development](https://about.gitlab.com/handbook/product-development-flow/)

     For the Release Post items, reviews of each feature's details are reviewed by
     the technical writer assigned to each stage/group. This is specified only in the [MR template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md), and
     not in the Handbook page.
1. [ ] Create your own test project in <https://gitlab.com/gitlab-org/technical-writing-group/>.
   You can use this project as a sandbox to test most GitLab features safely, at
   your own pace. It's also a good way to practice Git commands locally without working
   in a "production" project. A test project in this group is better than under
   your personal namespace because it has full access to all GitLab features, up
   to the Ultimate tier.
   1. Go to the [Technical Writing Team's group](https://gitlab.com/gitlab-org/technical-writing-group/)
      and select **Create project > Create blank project**.
   1. Set the project name as `Your name test project`.
   1. Set the **Visibility level** to public.
   1. Make sure **Initialize repository with a README** is selected, and **Enable Static Application Security Testing (SAST)**
      is *not* selected.
   1. Select **Create project**.
1. [ ] [Set up your computer](https://about.gitlab.com/handbook/product/ux/technical-writing/setup/)
   for writing and previewing GitLab product documentation.
1. [ ] Familiarize yourself with GitLab's [merge requests guidelines](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html).
1. [ ] The Technical Writing team uses the Geekbot app in Slack to run
   asynchronous standups, which include the 'Morning Stretch' and
   'Wednesday Weekly' questions. Ask your onboarding buddy who can add you to
   the application.
1. [ ] If you want to start feeling productive beyond your training, ask your
   onboarding buddy for a simple task to get you started.
1. [ ] Verify you have access to view the UX Meetings calendar, and add the calendar. Go to your calendar, left sidebar, go to Other calendars, press the + sign, Subscribe to calendar, and enter in the search field `gitlab.com_9psh26fha3e4mvhlrefusb619k@group.calendar.google.com` and then press Enter on your keyboard. NOTE: Please do NOT remove any meetings from this calendar or any other shared calendars, as it removes the event from everyone's calendar.
1. [ ] As you're reading, see if you can find the answers to
   [these questions](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/onboarding/tw_quiz.md). If you're unsure of
   something, ask your buddy or post in Slack. When you're ready, you can
   [check your answers](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/onboarding/answer_key.md).
1. [ ] Submit a request for [Light Agent access to ZenDesk](https://about.gitlab.com/handbook/support/internal-support/#submitting-internal-license-request-extensions-and-viewing-support-tickets) so that you can view support tickets.
1. [ ] Make sure your work email in Workday and the [email you use for notifications in your GitLab profile](https://gitlab.com/-/profile/notifications) are the same. Our performance indicators rely on this information.

In the following sections, link to the issues and MRs you're assigned to or
that you create. Edit the issue and include those links as soon as they exist;
don't wait for the end of the milestone.

#### First release - Shadow stage groups

1. [ ] For the first release cycle beginning after your start date (the first
   18th), shadow your buddy's work in [their most active Stage Group], plus two
   other stage group/writers, decided with your manager and the team. During
   shadowing, the established technical writers proactively share relevant issues,
   merge requests, and communications with you by creating/using a
   `#tw-onboarding-<groupname>` channel, and answer questions you have that arise
   in this context.
1. [ ] Read about all stages and groups, and discuss with your manager whether
   there's a particular group that will need your coverage as technical writer,
   or multiple groups you may be interested in.

   - [ ] List group 1 here:
   - [ ] List group 2 here:
   - [ ] List group 3 here:

1. [ ] Link to any issues you are assigned here:
1. [ ] Link to any merge requests you are assigned here:

#### Second release - Trainee

1. [ ] For the second release cycle that begins after your start date (the
   second 18th), unless your manager extends the shadowing phase, act as a
   trainee for two to three groups (as assigned by your manager). The intent is to
   take on the groups as their technical writer for the next release. List the
   group names here: `group1`, `group2`, and `group3`.
1. [ ] Get to know the group: read about the features, read the documentation,
   try some of the features, review the group's vision page, review its
   docs-only issue board, read all the documentation applicable to it, and set
   up a meeting with the group Product Manager (PM) to get to know them, their
   priorities, how they'd recommend staying in sync about docs-only issue
   priorities on the board (and otherwise working together), and any upcoming
   documentation needs.
   1. [ ] Read up on [Documentation review apps](https://docs.gitlab.com/ee/development/documentation/review_apps.html).
   1. [ ] As part of the documentation review for the groups, create one or more MRs
      making improvements to the group's docs. These can be simple or "obvious" improvements,
      or larger if you like. Also, create one or more issues for work that can be addressed
      in the future. Use a [review app](https://docs.gitlab.com/ee/development/documentation/review_apps.html) for at least one of the MRs. Be sure to use the appropriate stage, group, `documentation`,
      and `Technical Writing` labels, and link them here:
      - MR(s):
      - Issue(s):
   1. [ ] Review the [planning workflow](https://about.gitlab.com/handbook/product/ux/technical-writing/workflow/#planning),
      then review the Technical Writing milestone plan for your trainee groups for the next release.
      Work with the assigned Technical Writer to update the board and planning issue links.
      [Example](https://gitlab.com/gitlab-org/technical-writing/-/issues/648).
1. [ ] Let the technical writers assigned to those groups know when you are ready to start
   acting as a reviewer, and they will assign substantial parts of the work to you for these groups.
   You do not need do all of this work solo, you can ask any number of people for help as needed.
   - *Review* roughly half of each group's MRs, including documentation, UI text,
     and release post content.
   - *Author* minor documentation improvements and fixes for these docs.
   - [ ] *Lead* one small but substantial documentation authoring project. You can
     work on an issue that you created, or a TW might suggest one for you. Ping the
     TW responsible for the relevant docs to let them know you intend to work on it.
     Link to issue here: `Issue link`.
1. [ ] As you will now be actively reviewing merge requests, set yourself as a documentation
   reviewer by adding the following to your [team member file](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/team_members/person),
   after the `departments:` section:

   ```yaml
   projects:
     gitlab: reviewer docs
     omnibus-gitlab: reviewer docs
     gitlab-runner: reviewer docs
     gitlab-chart: reviewer docs
     gitlab-development-kit: reviewer docs
     gitlab-docs: reviewer
   ```

   This change will have an effect:
   - On projects here: <https://about.gitlab.com/handbook/product/projects/>.
   - On the GitLab Review Workload Dashboard: <https://gitlab-org.gitlab.io/gitlab-roulette/>.
     You can filter for just docs maintainers or reviewers. People might find you
     on this list and ask you to do a first review on their MR. Feel free to do the review,
     or pass on to another TW, depending on your comfort with the changes in the MR.
1. [ ] Optional. If you are not comfortable being pinged randomly for first reviews yet,
   (or are being pinged too much) you can [change your GitLab status](https://docs.gitlab.com/ee/user/profile/#set-your-current-status)
   to set yourself as unavailable for reviews:
   - Profile emoji: `bulb` (:bulb:), this emoji tells the Workload Dashboard that
     you are unavailable, and your card will be greyed out in the list. See the
     [Reviewer roulette docs](https://docs.gitlab.com/ee/development/code_review.html#reviewer-roulette)
     for more details.
   - Profile message: `Onboarding, not currently accepting reviews.`

   Be sure to change the emoji and message when you are ready to start receiving reviews.

1. [ ] Add links to group-related issues you're assigned during this milestone:
1. [ ] Add links to group-related merge requests you've reviewed or authored:
1. [ ] Optional. Add links to other issues or MRs that you worked on that do not
   relate to your group work, but would like to highlight:

The trainee phase may be extended by an additional milestone at the discretion
of the manager.

#### Third release - Assigned with developer permissions and coach

1. [ ] For the third release cycle, you assume the full role of technical
   writer for the groups, except that the former technical writers assigned to
   the groups are now the coaches. You do all reviews from start to finish (including
   reviews you perform for content authored by other TWs) as the group's primary TW.
   When finished, forward the MR to your coach for final review and merge.
   Your coaches can share the burden of these reviews with other technical writers.
1. [ ] Submit an access request to become a maintainer for these projects:
   - [`gitlab`](https://gitlab.com/gitlab-org/gitlab)
   - [`omnibus-gitlab`](https://gitlab.com/gitlab-org/omnibus-gitlab)
   - [`charts/gitlab`](https://gitlab.com/gitlab-org/charts/gitlab)
   - The [`gitlab-runner`](https://gitlab.com/gitlab-org/gitlab-runner) groups:
     - [`runner-docs-maintainers`](https://gitlab.com/groups/gitlab-com/runner-docs-maintainers/-/group_members?sort=access_level_desc)
     - [`runner-maintainers`](https://gitlab.com/groups/gitlab-com/runner-maintainers/-/group_members?sort=access_level_desc)
   - [`gitlab-development-kit`](https://gitlab.com/gitlab-org/gitlab-development-kit)
   - [`gitlab-docs`](https://gitlab.com/gitlab-org/gitlab-docs)
   - [`technical-writing`](https://gitlab.com/gitlab-org/technical-writing)
   - [`gitlab_kramdown`](https://gitlab.com/gitlab-org/gitlab_kramdown) (Optional - Only one TW per region needs this access)

   Use the [Single person access request template](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new)
   and tag your manager. Going forward, if the manager approves the access request, you can
   merge content without a coach as the technical writer for the group.
   Otherwise, your developer permissions and coach's collaboration may continue
   through another release.
1. [ ] When you have maintainer access to the previously listed projects, submit an MR
   to update your [team member file](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/team_members/person)
   with your project permissions. Change `reviewer` to `maintainer` for all
   the projects you have maintainer access to.
1. [ ] Submit an MR to add yourself as a `docs.gitlab.com` administrator to the Google Search Console.
   Follow the instructions to add an [HTML `meta` tag](https://support.google.com/webmasters/answer/9008080?hl=en&ref_topic=9455938#zippy=%2Chtml-tag):

   1. Go to <https://search.google.com/search-console>.
   1. In **URL Prefix**, enter `https://docs.gitlab.com` and select **Continue**.
   1. Expand the **HTML Tag** section, and copy the code given.
   1. Open an MR to add the tag and your name to the list at <https://gitlab.com/gitlab-org/gitlab-docs/-/blob/4b87b706ee1f32d2fa25e59d604750ca408f2359/layouts/head.html#L51>.
   1. Submit the MR to your manager for approval and merge.

1. [ ] Add the links to other issues to which you're assigned or MRs you
   authored or reviewed that don't pertain to the group, if any:

/label ~"onboarding" ~"Technical Writing"
