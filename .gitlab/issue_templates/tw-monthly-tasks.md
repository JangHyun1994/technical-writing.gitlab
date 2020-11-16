# Technical Writing recurring tasks for: YYYY-MM

We have a regularly set of scheduled tasks for technical writers, to
keep our documentation repositories healthy, with a minimum of technical
debt. These tasks typically should not take more than 2 or 3 working days.

If you have problems such as broken links without obvious replacements,
ask in the appropriate Slack channel, and/or open an issue. These tasks
are an "MVC", and they are not intended to solve 100% of related
technical debt.

Each month, the Technical Writer [assigned to recurring tasks](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#regularly-scheduled-tasks)
will ensure the following tasks are completed to help keep the `gitlab`
repository in good condition:

- [ ] **Check for broken external links.** Run the `test_external_links` manual
  job in the most recently run [scheduled pipeline](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines)
  and fix as many of the links as time permits. Be aware that:
  - Check all suggestions for new links. The forwarded link may also be broken. 
  - The forwarded link may include a trailing forward slash. While not required for most browsers,
    the trailing slash can help prevent errors.
  - The forwarded link may not include section title links (anchors), such as `#section-title`. You may need to add that `#section-title` manually.
  - Links may disappear, such as when external software goes beyond service life
    ("EOSL"), or the company behind the external software is no longer in business.
  - Updated links may not provide the information that's originally desired. You
    may need to open a new issue for others to resolve these links.
  - You may need to separate MRs for each of our repositories
  - [ ] MR for charts
  - [ ] MR for gitlab
  - [ ] MR for gitlab-runner
  - [ ] MR for omnibus-gitlab
  - [ ] Issue(s) for links that do not have obvious fixes

- [ ] **Check the Kramdown build logs for errors.** On the
  [docs pipeline page](https://gitlab.com/gitlab-org/gitlab-docs/-/pipelines),
  select the pipeline you want to examine. In its **Jobs** tab, select the job
  link for `compile_prod` or `compile_dev`. In the provided job log, search for
  `kramdown warning` messages, which are usually caused by problematic HTML or
  square brackets.
  You may not see Kramdown build errors every month, if we're lucky.

- [ ] **Check for trailing whitespace.** Run the `test_EOL_whitespace` manual job
  in the most recently run scheduled pipeline.
  - [ ] MR for charts
  - [ ] MR for gitlab
  - [ ] MR for gitlab-runner
  - [ ] MR for omnibus-gitlab

- [ ] **Check for [uncompressed images](https://docs.gitlab.com/ee/development/documentation/styleguide.html#compress-images).**

  Run the following commands in `gitlab-org/gitlab`:

  ```shell
  # Check for uncompressed images
  bundle exec rake pngquant:lint
  # Compress any uncompressed images
  bundle exec rake pngquant:compress
  ```

  You may not need MRs for each of these repositories, but you should
  at least check.
  - [ ] MR for charts
  - [ ] MR for gitlab
  - [ ] MR for gitlab-runner
  - [ ] MR for omnibus-gitlab

- [ ] **Check for unused images.** Run the following command to test for images
  that are included in the repository, but aren't linked anywhere:

  ```shell
  #!/bin/sh

  for FILE in $(git ls-files "./doc/*.png"); do git grep $(basename "$FILE") > /dev/null || echo "Not linked, would remove $FILE"; done
  ```

  You may not need MRs for each of these repositories, but you should
  at least check.
  - [ ] MR for charts
  - [ ] MR for gitlab
  - [ ] MR for gitlab-runner
  - [ ] MR for omnibus-gitlab

- [ ] **Improve this template, if needed.** It's available in
  [this folder](https://gitlab.com/gitlab-org/technical-writing/-/tree/master/.gitlab/issue_templates)
  of the [`technical-writing`](https://gitlab.com/gitlab-org/technical-writing/) repository.

/label ~Technical Writing
/label ~docs::fix
/label ~documentation
/label ~tw::doing
