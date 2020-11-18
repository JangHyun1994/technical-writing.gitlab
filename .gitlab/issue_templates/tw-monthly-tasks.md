# Technical Writing recurring tasks for: YYYY-MM

Each month, the Technical Writer [assigned to recurring tasks](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks)
will ensure the following tasks are completed to help keep the `gitlab`,
`charts`, `gitlab-runner`, and `omnibus-gitlab` repositories in good condition:

- [ ] **Check for broken external links.** Run the `test_external_links` manual
  job in the most recently run [scheduled pipeline](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines)
  and fix as many of the links as time permits. Be aware that:
  - Evaluate suggestions for new links; the forwarded link may also be broken.
  - The forwarded link may include a trailing forward slash. While not required
    for most browsers, the trailing slash can help prevent errors.
  - The forwarded link may not include section title links (anchors), such as
    `#section-title`. You may need to add the `#section-title` manually.
  - Links may disappear, such as external software reaching end-of-life.
  - Updated links may not provide the desired information; you may need to
    create an issue to resolve these links.
- [ ] **Check the Kramdown build logs for errors.** On the
  [docs pipeline page](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines),
  select the pipeline you want to examine. In its **Jobs** tab, select the job
  link for `compile_prod` or `compile_dev`. In the provided job log, search for
  `kramdown warning` messages, which are usually caused by problematic HTML or
  square brackets.
- [ ] **Check for trailing whitespace.** Run the `test_EOL_whitespace` manual job
  in the most recently run scheduled pipeline.
- [ ] **Check for [uncompressed images](https://docs.gitlab.com/ee/development/documentation/styleguide.html#compress-images).**
  Run the following commands in `gitlab-org/gitlab`:
  ```shell
  # Check for uncompressed images
  bundle exec rake pngquant:lint
  # Compress any uncompressed images
  bundle exec rake pngquant:compress
  ```
- [ ] **Check for unused images.** Run the following command to test for images
  that are included in the repository, but aren't linked anywhere:
  ```shell
  #!/bin/sh

  for FILE in $(git ls-files "./doc/*.png"); do git grep $(basename "$FILE") > /dev/null || echo "Not linked, would remove $FILE"; done
  ```
- [ ] **Improve this template, if needed.** It's available in
  [this folder](https://gitlab.com/gitlab-org/technical-writing/-/tree/master/.gitlab/issue_templates)
  of the [`technical-writing`](https://gitlab.com/gitlab-org/technical-writing/) repository.

Some of the tasks may not return any results, which is fine.

If you have problems (such as broken links without obvious replacements), ask
in the appropriate Slack channel, or open an issue/MR. Note that these tasks
aren't intended to solve 100% of related technical debt.

/label ~Technical Writing
/label ~tw::doing
