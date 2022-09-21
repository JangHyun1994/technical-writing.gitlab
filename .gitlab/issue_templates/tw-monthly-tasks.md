# Technical Writing recurring tasks for: YYYY-MM

Each month, the Technical Writer [assigned to recurring tasks](https://about.gitlab.com/handbook/product/ux/technical-writing/#regularly-scheduled-tasks)
ensures the following tasks are completed to help minimize technical debt.

## Suggested order

These recurring tasks require a varying amount of time to complete. To make efficient use of your time, they are grouped according to the amount of time they usually take.

These tasks can sometimes take a long time:

- Review the Kramdown build logs for warnings.
- Check for broken external links.
- Search for and remove expired redirect files.

These tasks usually don't take as much time:

- Look for uncompressed images.
- Check for unlinked images.
- Check for trailing whitespace.

## Local tasks

The following tasks have tests that must be run locally on your workstation. To perform these tasks:

- [ ] **Look for [uncompressed images](https://docs.gitlab.com/ce/development/documentation/styleguide/index.html#compress-images).**

  1. Run the following command in `gitlab-org/gitlab` to check if any uncompressed images exist
     and compress them:

     ```shell
     bin/pngquant compress
     ```

  1. If there are any results, create a new branch and then a merge request.
     Assign to any TW for merge.

- [ ] **Search for and remove expired redirect files.**

  1. Run the following command in `gitlab-org/gitlab-docs` to check if any redirected
     files need to be removed. This will
     [automatically create](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/raketasks.md#clean-up-redirects)
     all the needed MRs:

     ```shell
     bundle exec rake docs:clean_redirects
     ```

     The task only removes the expired redirected files. There might be cases
     where some docs checks fail, so you'll need to fix those yourself. For example:
     - In [this MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/68139), [`docs-lint links` failed](https://gitlab.com/gitlab-org/gitlab/-/jobs/1501259729)
       because the deleted file was referenced somewhere else. You need to edit
       the files where the deleted doc was referenced and update them with the
       new doc URL (its `redirect_to` value).
     - [`docs-lint markdown` failed](https://gitlab.com/gitlab-org/gitlab/-/jobs/1501259728)
       because one or more `README.md` files were deleted. The number of `README.md` files must
       be [updated in `lint-docs.sh`](https://gitlab.com/gitlab-org/gitlab/-/blob/4280e2f335ca4d425d607826fffce080381abe4c/scripts/lint-doc.sh#L70).
     - In [this MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/83832), the [`ui-docs-links-lint` job failed](https://gitlab.com/gitlab-org/gitlab/-/jobs/2263919454) because the deleted file was referenced in a help link in the UI.
       Open an MR to update the UI link. When merged, rebase your redirects MR to pick up the fix.
  1. Add the `gitlab-docs` MR as a dependency to any MRs that delete the redirect files
     in the other projects. Assign all MRs to the same Technical Writer, and explain that the
     `gitlab-docs` MR should be merged first, followed by the MRs in the other projects.

     Be sure to `@`-mention `hsmith-watson` in Marketing so they can update any now-expired links on
     `about.gitlab.com`.

## Remote tasks

The following tasks have tests that you can run from pipelines in the `gitlab-docs` project.
Some of the tests may not return any results, and no further work is required for that
task. To perform these tasks:

1. Go to the [pipeline schedules page](https://gitlab.com/gitlab-org/gitlab-docs/-/pipeline_schedules).
1. Click the **Play** button for the `Run TW chores jobs` scheduled pipeline.
1. Go to the [pipelines page](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines)
   and find the pipeline you just triggered at the top. The pipeline has two stages.

   The first stage runs the `compile_dev` job automatically:

   - [ ] **Review the Kramdown build logs for warnings.** Check the `compile_dev`
     job log, and search for `kramdown warning` messages (which are usually caused
     by malformed Markdown). If the warning is reported for line 1 in a file, it's
     likely the problem is in a Markdown table, which could be anywhere in the file.

   The second stage has three manual jobs. Click **Play** on the jobs you want to run:

   - [ ] **Check for unlinked images.** Run the `test_unlinked_images` job, which checks
     all 4 projects to see if any images are no longer in use. It takes 40+ minutes
     to run, so you may want to start this job first, then work on the other tasks
     while waiting.
   - [ ] **Check for broken external links.** Run the `test_external_links` job. The job
     can produce a lot of output, so scan through the list and prioritize the fixes as follows:

     - Links returning a `404` error. These links are likely broken
       for customers, so they should be fixed first. If you can't find a replacement
       link, lean toward removing the link and surrounding content.
     - Redirects. At some stage, the redirects might be removed too, so it's better
       to update them now. Fix as many as time allows. When evaluating redirects:
       - Check the forwarded link, as it may also
         be broken or may redirect again to another page.
       - Check if the URL has a forward slash (`/`) at the end when you visit it, and ensure your fix does the same.
         Many redirect warnings are caused solely due to the presence or absence of the slash.
       - Check for section title links (anchors), such as
         `#section-title`. You may need to add the `#section-title` manually.
       - Create an issue and assign it to an SME if the updated link does not provide
         the desired information.
     - False positives. This is where a failing link is actually valid, for example,
       where a website needs authentication, or the site server returns a response
       the link checker sees as a failure. To fix this, exclude it from
       the link checker. Go to <https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/nanoc.yaml>
       and add the link under `exclude:`, following the pattern of the other links
       already there. Fix as many as time allows.

   - [ ] **Check for trailing whitespace.** Run the `test_EOL_whitespace` job to
     find all pages with lines that have a trailing whitespace that isn't needed and fix them:

     - If there are trailing whitespaces in the `gitlab` project, run (with `yarn` dependencies installed) in the root directory:

       ```shell
       yarn run markdownlint:no-trailing-spaces:fix doc
       ```

     - If there are trailing whitespaces `omnibus-gitlab` or `charts/gitlab` projects, run (with `yarn` dependencies installed) in the root
       directory:

       ```shell
       markdownlint --config doc/.markdownlint/markdownlint-no-trailing-spaces.yml doc --fix
       ```

     - If there are trailing whitespaces `gitlab-runner` project, run (with `yarn` dependencies installed) in the root directory:

       ```shell
       markdownlint --config docs/.markdownlint/markdownlint-no-trailing-spaces.yml docs --fix
       ```

       NOTE:
       If you create a branch in the `omnibus-gitlab` or `charts-gitlab` project to fix trailing whitespaces, use a documentation-only [branch name](https://docs.gitlab.com/ee/development/documentation/#branch-naming) so that the pipeline only runs docs-specific jobs.

If you have problems (such as broken links without obvious replacements), ask in the appropriate
Slack channel, or open an issue/MR. Note that these tasks aren't intended to solve 100% of related
technical debt.

## Final steps

- [ ] **Improve [this template](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/.gitlab/issue_templates/tw-monthly-tasks.md), if needed.**
- [ ] Create a new issue for the next month's chores, and assign it to the next TW
  [on the schedule](https://about.gitlab.com/handbook/product/ux/technical-writing/#regularly-scheduled-tasks).

/label ~Technical Writing
/label ~tw::doing
