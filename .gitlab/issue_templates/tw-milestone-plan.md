As a result of the [FY2022Q3 OKR, Balance tech writer workload by improving the planning and estimation process for feature docs](https://gitlab.com/gitlab-org/technical-writing/-/issues/453), we determined that the following plan would help us begin to consolidate release planning for the TW team.

**Why is release planning for the tech writing team important?** First, we are almost entirely reactive. Our workflow has writers constantly responding to developer reviews to update the docs. We don't have a consistent planning process across the team. That makes it hard for us to estimate our capacity. Second, we also have had a [long-standing focus on Improvement MRs](https://about.gitlab.com/handbook/engineering/ux/performance-indicators/#distribution-of-technical-writing-team-documentation-effort) (now called Maintenance.) How do we plan for OKRs, improvement projects, and backlog items if we don't understand what's coming for release docs? All of this contributes to the question: How do we know when we have the correct number of writers on the team?

Beginning to understand what's coming in each release across stages will help us plan for more Improvement projects and OKRs, such as the [CTRT OKR](https://app.ally.io/objectives/1665339?time_period_id=135093) already scheduled. We know findability is a problem on the docs site, and that users struggle to figure out how to use GitLab. Moving from reactive to proactive working will benefit our users by allowing us to plan to focus on targeted improvements.

This issue provides a consolidated view of what the Technical Writing team expects to work on with their assigned groups for the upcoming milestone. In addition to the work with their assigned groups, the [Technical Writing team](https://about.gitlab.com/handbook/engineering/ux/technical-writing/) also works on [OKRs](https://about.gitlab.com/handbook/engineering/ux/#okrs) and other tasks that are not reflected in this issue.

**By the `15th` of each month:**

One of the TW Managers creates the issue for the upcoming milestone.

**By the `29th` of each month:**

The TW carries out the following planning activities for their assigned groups, and populates [Checklist and links](#checklist-and-links) to confirm these activities have taken place:

1. Have a conversation - synchronously or asynchronously - with either the group **PM** or **EM** to review planned ~"documentation" and ~"UI text" work for the upcoming milestone (`Milestone: Upcoming`) or (`Milestone: Started`). This is also an opportunity to talk to the PM or EM about any improvement or development opportunities they're aware of in their areas of the product documentation. This can be a regular group meeting or any other means of communication that you have established with your group.

1. Identify a linked artifact that describes the upcoming planned work, such as:
   - An issue board for the group's documentation/UI text items for the milestone.
   - A filter that describes/lists the planned work. ([Example](https://gitlab.com/groups/gitlab-org/-/boards/3168664?scope=all&label_name[]=documentation&milestone_title=%23upcoming) for ~"devops::plan")
   - The group's planning issue, if it identifies issues/MRs that require Technical Writing team involvement. ([Example](https://gitlab.com/gitlab-org/ci-cd/pipeline-authoring/-/issues/30))

1. Select the appropriate checkboxes and share the links to planned features to confirm that the "conversation" has taken place.

## Checklist and links

After you've reviewed the plan with your PM or EM, select the checkbox for your group. If you can't meet with the PM or EM for some reason (perhaps they're on PTO), append that information to the end of the line and leave the checkbox cleared.

### Stage ~"devops::manage"

- [ ] ~"group::authentication and authorization" - `Link to board or filter`
- [ ] ~"group::workspace" - `Link to board or filter`
- [ ] ~"group::compliance" - `Link to board or filter`
- [ ] ~"group::import" - `Link to board or filter`
- [ ] ~"group::optimize" - `Link to board or filter`

### Stage ~"devops::plan"

- [ ] ~"group::project management" - `Link to board or filter`
- [ ] ~"group::product planning" - `Link to board or filter`
- [ ] ~"group:certify" - `Link to board or filter`

### Stage ~"devops::create"

- [ ] ~"group::source code" - `Link to board or filter`
- [ ] ~"group::code review" - `Link to board or filter`
- [ ] ~"group::editor" - `Link to board or filter`
- [ ] ~"group::gitaly" - `Link to board or filter`

### Stage ~"devops::ecosystem"

- [ ] ~"group::integrations" - `Link to board or filter`
- [ ] ~"group::foundations" - `Link to board or filter`

### Stage ~"devops::verify"

- [ ] ~"group::pipeline execution" - `Link to board or filter`
- [ ] ~"group::pipeline authoring" - `Link to board or filter`
- [ ] ~"group::runner" - `Link to board or filter`
- [ ] ~"group::testing" - `Link to board or filter`

### Stage ~"devops::package"

- [ ] ~"group::package" - `Link to board or filter`

### Stage ~"devops::release"

- [ ] ~"group::release" - `Link to board or filter`

### Stage ~"devops::configure"

- [ ] ~"group::configure" - `Link to board or filter`

### Stage ~"devops::monitor"

- [ ] ~"group::respond" - `Link to board or filter`
- [ ] ~"group::observability" - `Link to board or filter`

### Stage ~"devops::secure"

- [ ] ~"group::static analysis" - `Link to board or filter`
- [ ] ~"group::dynamic analysis" - `Link to board or filter`
- [ ] ~"group::composition analysis" - `Link to board or filter`
- [ ] ~"group::threat insights" - `Link to board or filter`
- [ ] ~"group::vulnerability research" - `Link to board or filter`

### Stage ~"devops::protect"

- [ ] ~"group::container security" - `Link to board or filter`

### Stage ~"devops::growth"

- [ ] ~"group::activation" - `Link to board or filter`
- [ ] ~"group::conversion" - `Link to board or filter`
- [ ] ~"group::expansion" - `Link to board or filter`
- [ ] ~"group::adoption" - `Link to board or filter`
- [ ] ~"group::product intelligence" - `Link to board or filter`

### Stage ~"devops::fulfillment"

- [ ] ~"group::purchase" - `Link to board or filter`
- [ ] ~"group::license" - `Link to board or filter`
- [ ] ~"group::utilization" - `Link to board or filter`

### Stage ~"devops::enablement"

- [ ] ~"Distribution:Build" - `Link to board or filter`
- [ ] ~"Distribution:Deploy" - `Link to board or filter`
- [ ] ~"group::geo" - `Link to board or filter`
- [ ] ~"group::memory" - `Link to board or filter`
- [ ] ~"group::global search" - `Link to board or filter`
- [ ] ~"group::database" - `Link to board or filter`
- [ ] ~"group::sharding" - `Link to board or filter`

/assign @gl-docsteam 
/label ~"Technical Writing" ~"tw-plan" 
