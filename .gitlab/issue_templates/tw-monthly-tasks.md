# Technical Writing recurring tasks for: YYYY-MM

Each month, the Technical Writer [assigned to recurring tasks](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks)
will ensure the following tasks are completed to help keep the `gitlab`
repository in good condition:

- [ ] **Check for broken external links.** Run the `test_external_links` manual
  job in the most recently run [scheduled pipeline](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines)
  and fix as many of the links as time permits. Be aware that:
  - The forwarded link may not include section title links, such as `#section-title`.
  - Links may disappear, such as when external software goes beyond service life
    ("EOSL").
  - Updated links may not provide the information that's originally desired. You
    may need to open a new issue for others to resolve these links.
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
  for FILE in $(git ls-files "./doc/*.png"); do git grep $(basename "$FILE") > /dev/null || echo "Not linked, would remove $FILE"; done
  ```
- [ ] **Improve this template, if needed.** It's available in
  [this folder](https://gitlab.com/gitlab-org/technical-writing/-/tree/master/.gitlab/issue_templates)
  of the [`technical-writing`](https://gitlab.com/gitlab-org/technical-writing/) repository.

/label ~Technical Writing
/label ~tw::doing
