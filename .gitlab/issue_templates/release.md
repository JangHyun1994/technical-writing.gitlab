<!--
SET TITLE TO: docs.gitlab.com release XX.ZZ (monthname, YYYY)
-->

## Tasks for all releases

Between the 17th and 20th of each month:

- [ ] Monitor the `#releases` Slack channel. When the announcement
  `This is the candidate commit to be released on the 22nd` is made, it's time to begin.
- [ ] [Create stable branch and Docker image for release](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md#create-stable-branch-and-docker-image-for-release). Do not create a merge request, just push the stable branch.
- [ ] [Create a release merge request for the new version](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md#create-release-merge-request),
  which updates the version dropdown menu for the current documentation, and adds
  the release to the Docker configuration. Mark as `Draft` and do not merge.
- [ ] [Update the three online versions](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md#update-dropdown-for-online-versions),
  so they display the new release on their version dropdown menus.

On the 22nd of each month, after the release post is live:

- [ ] [Merge the release merge requests](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md#merge-merge-requests-and-run-docker-image-builds)
  and run the necessary Docker image builds.
  - [ ] Are all pipelines green?
  - [ ] Merge the MRs for updates to the dropdown menus.
  - [ ] Merge the docs-release merge request.
  - [ ] Each merge triggers a new pipeline for each stable branch. Check
    [the pipelines page](https://gitlab.com/gitlab-org/gitlab-docs/pipeline_schedules)
    and wait for all the stable branch pipelines to complete before proceeding.
  - [ ] Go to the [scheduled pipelines page](https://gitlab.com/gitlab-org/gitlab-docs/pipeline_schedules)
    and run the Build docker images weekly pipeline.
  - [ ] In the scheduled pipeline you just started, manually run the `image:docs-latest` job that builds the `:latest` Docker image.
  - [ ] When the pipeline is complete, run the `Build docs.gitlab.com every 4 hours` scheduled pipeline to deploy all new versions to the public documentation site.
    You don't need to run any jobs manually for this second pipeline.
- [ ] After the deployment completes, open `docs.gitlab.com` in a browser. Confirm
  both the latest version and the correct `pre-` version are listed in the documentation version dropdown.
- [ ] *Major releases only.* Check all previous versions.
- [ ] Crosslink to the merge request for the main release post.
- [ ] Create separate comments for the retrospective: `## :+1: What went well this release?`,
  `## :-1: What didn’t go well this release?`, `## :chart_with_upwards_trend: What can we improve
  going forward?` and add items as they appear.

After the 22nd of each month:

- [ ] Create a release issue for the [next TW](https://about.gitlab.com/handbook/marketing/blog/release-posts/managers/)
  and assign it to them.
- [ ] *Major releases only.* Update [OutdatedVersions.yml](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/.vale/gitlab/OutdatedVersions.yml)
  with the newly-outdated version.
- [ ] Improve this checklist. Continue moving steps from
  [`releases.md`](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md)
  to here until the issue template is the single source of truth and the documentation provides extra information.

## Helpful links

- [List of upcoming assignees for overall release post](https://about.gitlab.com/handbook/marketing/blog/release-posts/managers/)
- [Internal docs for handling the docs release](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md)

/label ~"Technical Writing" ~"type::maintenance" ~"Category:Docs Site"
