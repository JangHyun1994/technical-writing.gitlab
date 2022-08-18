<!-- The issue name should be in the form: Transition [stage]/[group] TW assignment to [new writer] -->
<!-- Create separate issues for each group being transitioned to a different technical writer. -->

- Stage/group being transitioned:
- Current technical writer:
- Incoming technical writer:
- Reassignment milestone:

## Tasks for current technical writer

- [ ] Invite the incoming TW to the stage and group Slack channels.
  - Channel list: _TBD_
- [ ] Post in Slack about the changeover. Communicate the timeline and how MRs will be handled.
- [ ] Reach out to the Product Manager, Engineering Manager, and Design Manager to communicate the change.
  - [ ] PM:  _TBD_
  - [ ] EM:  _TBD_
  - [ ] PDM: _TBD_

### Group information for incoming technical writer

To make the transition easier for the incoming technical writer, answer these questions in separate comments threads.
Give as much detail as you feel is needed. The incoming technical writer should feel free to ask questions about any of
these details:

- [ ] How does the Product Manager plan work for future milestones? Provide links to relevant boards.
- [ ] How does the group prefer to communicate in issues and MRs regarding reviews?
- [ ] What is the [maturity](https://about.gitlab.com/direction/maturity/) of the feature set and documentation for
      the feature set?
- [ ] How well are features of the group known to people outside the group?
- [ ] How much ~"UI text" work does the group generate?
- [ ] Can the feature set for the group be explored solely on GitLab.com, or does it also require GDK or access to
      third-party tools?
- [ ] Does the group attract a lot of ~"Support Team Contributions" and ~"Community contribution"?

## Tasks for EMs and PMs

- [ ] Add the incoming TW to team meetings and any group aliases.
  - Meeting list: _TBD_
- [ ] Remove the outgoing TW from team meetings and any group aliases.
- [ ] Determine the resources needed by the incoming TW to learn the stage / group
  features, similar to an engineer's onboarding.

## Tasks for incoming technical writer

- [ ] Set up coffee chats with the group's:
  - [ ] Product manager
  - [ ] Engineering manager
  - [ ] [Frontend and backend team members](https://about.gitlab.com/handbook/product/categories/) (not necessary to meet all)
  - [ ] UX designer
- In the `www-gitlab-com` repository, update:
  - [ ] [`data/stages.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml), with your new assignment.
- In the `gitlab` repository, update as needed:
  - [ ] Group assignments in [`lib/tasks/gitlab/tw/codeowners.rake`](https://gitlab.com/gitlab-org/gitlab/blob/master/lib/tasks/gitlab/tw/codeowners.rake)
  - [ ] [`.gitlab/CODEOWNERS`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/CODEOWNERS) (consider running the [`tw:codeowners` Rake task](https://docs.gitlab.com/ee/development/documentation/#batch-updates-for-tw-metadata) to ensure no pages are missed)
- [ ] Read the product documentation associated with your group (as identified by the group attribute in documentation pages' metadata).

## Tasks for technical writing manager

- [ ] Update [Workday](https://about.gitlab.com/handbook/people-group/workday/workday-guide/) with the new group assignments. Workday updates the group assignments in `data/team_members/person`. Interim instructions during Workday rollout: Manager emails `people-connect@gitlab.com` with details of changes.

/label ~"Technical Writing"
