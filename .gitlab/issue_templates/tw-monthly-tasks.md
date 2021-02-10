# Technical Writing recurring tasks for: YYYY-MM

Each month, the Technical Writer [assigned to recurring tasks](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks)
will ensure the following tasks are completed to help keep the `gitlab`,
`charts`, `gitlab-runner`, and `omnibus-gitlab` repositories in good condition:

## Manual tasks

- [ ] **Improve [this template](https://gitlab.com/gitlab-org/technical-writing/-/tree/master/.gitlab/issue_templates), if needed.**
- [ ] **Review the Kramdown build logs for warnings.** On the [docs pipeline page](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines),
  select any recent pipeline. In its **Jobs** tab, select `compile_prod` or `compile_dev`.
  In the provided job log, search for `kramdown warning` messages, which are usually
  caused by problematic HTML or square brackets. If the warning is reported for line 1
  in a doc, it's likely the problem is in a Markdown table, which could be anywhere in the doc.
- [ ] **Look for [uncompressed images](https://docs.gitlab.com/ee/development/documentation/styleguide.html#compress-images).**
  Run the following commands in `gitlab-org/gitlab` to check if any uncompressed images exist:

  ```shell
  bundle exec rake pngquant:lint
  ```

  If there are any results, create a new branch and compress the images with:

  ```shell
  bundle exec rake pngquant:compress
  ```
- [ ] **Search for and remove expired redirect files.** Do a global search for product documentation `.md` files with
  `This redirect file can be deleted after` to find the files that can now be deleted:

  ```shell
  grep -ri "This redirect file can be deleted after" .
  ```

  1. Note the filenames, redirect locations, and expiration dates of the expired
     redirect files, and then create an MR to remove those files.
  1. Create an MR in [`gitlab-docs`](https://gitlab.com/gitlab-org/gitlab-docs) to update
     [`content/_data/redirects.yaml`](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/master/content/_data/redirects.yaml)
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
     the `/` URL (without `index.html). For example:

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

## Automated tasks

The following tasks have automated tests that you can run from a scheduled pipeline in the
`gitlab-docs` project. To run the pipeline:

1. Go to the [pipeline schedules page](https://gitlab.com/gitlab-org/gitlab-docs/-/pipeline_schedules).
1. Click the **Play** button for the `Run TW chores jobs` scheduled pipeline.
1. Go to the [pipelines page](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines)
   and find the pipeline you just triggered at the top. The pipeline has one stage,
   with three manual jobs. Click **Play** on the jobs you wish to run:

   - [ ] **Check for unused images.** Run the `test_unused_images` job, which checks
     all 4 projects to see if any images are no longer in use. It takes 30+ minutes
     to run, so you may want to start this job first, then work on the other tasks
     while waiting.
   - [ ] **Check for broken external links.** Run the `test_external_links` job,
     and fix as many of the links as time permits. Be aware that:
     - You have to evaluate suggestions for new links; the forwarded link may also
       be broken or may redirect again to another page.
     - The forwarded link may include a trailing forward slash. While not required
       for most browsers, the trailing slash can help prevent errors.
     - The forwarded link may not include section title links (anchors), such as
       `#section-title`. You may need to add the `#section-title` manually.
     - Links may disappear, such as external software reaching end-of-life.
     - Updated links may not provide the desired information; you may need to
       create an issue to resolve these links.
   - [ ] **Check for trailing whitespace.** Run the `test_EOL_whitespace` job to
     find all pages with lines that have trailing whitespace that isn't needed.

Some of the tests may not return any results, and no further work is required for that
task.

If you have problems (such as broken links without obvious replacements), ask
in the appropriate Slack channel, or open an issue/MR. Note that these tasks
aren't intended to solve 100% of related technical debt.

/label ~Technical Writing
/label ~tw::doing
