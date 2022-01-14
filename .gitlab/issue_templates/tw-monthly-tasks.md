# Technical Writing recurring tasks for: YYYY-MM

Each month, the Technical Writer [assigned to recurring tasks](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks)
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
     where some docs checks fail, so you'll need to fix those yourself.
     In [this example MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/68139):
     - [`docs-lint links` failed](https://gitlab.com/gitlab-org/gitlab/-/jobs/1501259729)
       because the deleted file was referenced somewhere else. You need to edit
       the two files where the deleted doc was referenced and update them with the
       new doc URL (its `redirect_to` value).
     - [`docs-lint markdown` failed](https://gitlab.com/gitlab-org/gitlab/-/jobs/1501259728)
       because one or more `README.md` files were deleted. The number of `README.md` files must
       be [updated in `lint-docs.sh`](https://gitlab.com/gitlab-org/gitlab/-/blob/4280e2f335ca4d425d607826fffce080381abe4c/scripts/lint-doc.sh#L70).
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
   - [ ] **Check for broken external links.** Run the `test_external_links` job,
     and fix as many of the links as time permits. Be aware that:
     - You have to evaluate suggestions for new links, as the forwarded link may also
       be broken or may redirect again to another page.
     - The forwarded link may include a trailing forward slash. While not required
       for most browsers, the trailing slash can help prevent errors.
     - The forwarded link may not include section title links (anchors), such as
       `#section-title`. You may need to add the `#section-title` manually.
     - Links may disappear, such as external software reaching end-of-life.
     - Updated links may not provide the desired information. You may need to
       create an issue and assign to an SME to resolve these links.
     - If you find that a failing link is actually valid, it may need to be excluded
       from the link checker. This could be due to a website that needs authentication,
       or a site with a server that returns a response the link checker sees as a failure.
       Go to <https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/nanoc.yaml>
       and add the link under `exclude:`, following the pattern of the other links
       already there.
   - [ ] **Check for trailing whitespace.** Run the `test_EOL_whitespace` job to
     find all pages with lines that have trailing whitespace that isn't needed and fix them:

     - If needed for the `gitlab` project, run (with `yarn` dependencies installed) in the root directory:

       ```shell
       yarn run markdownlint:no-trailing-spaces:fix doc
       ```

     - If needed for the `omnibus-gitlab` or `charts` projects, run (with `yarn` dependencies installed) in the root
       directory:

       ```shell
       markdownlint --config doc/.markdownlint/markdownlint-no-trailing-spaces.yml doc --fix
       ```

     - If needed for the `gitlab-runner` project, run (with `yarn` dependencies installed) in the root directory:

       ```shell
       markdownlint --config docs/.markdownlint/markdownlint-no-trailing-spaces.yml docs --fix
       ```

       NOTE:
       For MRs not in the `gitlab` project, prefix the branch name `docs-`. This ensures the pipeline
       runs only docs-specific jobs.

If you have problems (such as broken links without obvious replacements), ask in the appropriate
Slack channel, or open an issue/MR. Note that these tasks aren't intended to solve 100% of related
technical debt.

## Final steps

- [ ] **Improve [this template](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/.gitlab/issue_templates/tw-monthly-tasks.md), if needed.**
- [ ] Create a new issue for the next month's chores, and assign it to the next TW
  [on the schedule](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks).

/label ~Technical Writing
/label ~tw::doing
