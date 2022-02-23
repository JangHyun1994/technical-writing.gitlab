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

Be sure to provide any additional useful information about working with the group, including
how they prefer to communicate in issues/MRs regarding reviews.

## Tasks for EMs and PMs

- [ ] Add the incoming TW to team meetings and any group aliases.
  - Meeting list: _TBD_
- [ ] Remove the outgoing TW from team meetings and any group aliases.
- [ ] Determine the resources needed by the incoming TW to learn the stage / group
  features, similar to an engineer's onboarding.

## Tasks for incoming technical writer

- [ ] Set up coffee chats with:
  - [ ] Group Product Manager
  - [ ] Group Engineering Manager
  - [ ] Some [group frontend and backend team members](https://about.gitlab.com/handbook/product/categories/)
  - [ ] UX designer associated with the group
- In the `www-gitlab-com` repository, update:
  - [ ] [`data/stages.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml), with your new assignment.
- In the `gitlab` repository, update as needed:
  - [ ] [`.gitlab/CODEOWNERS`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/CODEOWNERS)
- [ ] Read the product documentation associated with your group (as identified by the group attribute in documentation pages' metadata).

## Tasks for technical writing manager

- [ ] Update [BambooHR](https://about.gitlab.com/company/team/structure/#setting-product-group-for-team-members) with the new group assignments. BambooHR automatically updates the group assignments in `data/team_members/person`.

/label ~"Technical Writing"
