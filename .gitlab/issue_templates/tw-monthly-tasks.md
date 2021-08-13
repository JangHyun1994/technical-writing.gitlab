# Technical Writing recurring tasks for: YYYY-MM

Each month, the Technical Writer [assigned to recurring tasks](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks)
ensures the following tasks are completed to help minimize technical debt.

## Local tasks

The following tasks have tests that must be run locally on your workstation. To perform these tasks:

- [ ] **Look for [uncompressed images](https://docs.gitlab.com/ce/development/documentation/styleguide/index.html#compress-images).**

  1. Run the following command in `gitlab-org/gitlab` to check if any uncompressed images exist
     and compress them:

     ```shell
     bundle exec rake pngquant:compress
     ```

  1. If there are any results, create a new branch and then a merge request.
     Assign to any TW for merge.

- [ ] **Search for and remove expired redirect files.**

  1. Do a global search for product documentation `.md` files with the search term
     `This redirect file can be deleted after` to find the files that can now be deleted:

     ```shell
     grep -ri "This redirect file can be deleted after" .
     ```

     Delete any files that have a deletion date on or before the current date.

  1. Note the filenames, redirect locations, and expiration dates of the expired
     redirect files, and then create an MR to remove those files (but don't assign it for merge yet).
  1. Create an MR in [`gitlab-docs`](https://gitlab.com/gitlab-org/gitlab-docs) to update
     [`content/_data/redirects.yaml`](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/content/_data/redirects.yaml)
     with one redirect entry for each file you're removing. The expiry date should
     be nine months in the future. Keep the entries alphabetically sorted.

     ```yaml
     - from: /ee/path/to/old_file.html
       to: /ee/path/to/new_file.html
       remove_date: YYYY-MM-DD
     ```

     Any redirect files that redirect to external docs (those starting with `https://`)
     should be deleted, with nothing added to the `redirects.yaml`.

     The path must start with the internal project directory (`/ee`,
     `/runner`, `/omnibus` or `/charts`) and end with `.html` or `/`.

     If the `from:` redirect is an `index.html` file, add a duplicate entry for
     the `/` URL (without `index.html`). For example:

     ```yaml
     - from: /ee/user/project/operations/index.html
       to: /ee/operations/index.html
       remove_date: 2021-11-01
     - from: /ee/user/project/operations/
       to: /ee/operations/index.html
       remove_date: 2021-11-01
     ```

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
     find all pages with lines that have trailing whitespace that isn't needed. To fix:

     - In the `gitlab` project, run (with `yarn` dependencies installed):

       ```shell
       yarn run markdownlint:no-trailing-spaces:fix doc
       ```

     - In the other projects, fix manually.

If you have problems (such as broken links without obvious replacements), ask in the appropriate
Slack channel, or open an issue/MR. Note that these tasks aren't intended to solve 100% of related
technical debt.

## Final steps

- [ ] **Improve [this template](https://gitlab.com/gitlab-org/technical-writing/-/blob/main/.gitlab/issue_templates/tw-monthly-tasks.md), if needed.**
- [ ] Create a new issue for the next month's chores, and assign it to the next TW
  [on the schedule](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks).

/label ~Technical Writing
/label ~tw::doing
