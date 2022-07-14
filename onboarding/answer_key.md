# Answers to the research questions

1. What is Pajamas and who uses it?

   The GitLab UI design system for GitLab. It's available at [https://design.gitlab.com/](https://design.gitlab.com/).

1. What are some things Dangerbot tests for? (Give three examples.)

   Dangerbot produces warnings and errors when your commit messages don't meet [GitLab commit message guidelines](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#commit-messages-guidelines).

1. If you update currently published content, how often/when is it published to the web?

   After your merge request pipelines succeed, it can take up to four hours.

   This is explained in the [GitLab `/help`](https://docs.gitlab.com/ee/development/documentation/#gitlab-help) documentation.

1. Which GitLab project has instructions for how to run a local build of the docs?

   [`gitlab-docs`](https://gitlab.com/gitlab-org/gitlab-docs)

1. How does GitLab handle redirects? (Where is it documented?)

   Read more about [redirects in GitLab documentation](https://docs.gitlab.com/ee/development/documentation/redirects.html).

1. Which GitLab project has the handbook?

   [`www-gitlab-com`](https://gitlab.com/gitlab-com/www-gitlab-com)

1. In the documentation, does GitLab allow use of contractions like "don't" or "can't"?

   Yes, though there are some cases where you shouldn't.

   In the style guide, read more about [contractions](https://docs.gitlab.com/ee/development/documentation/styleguide/#contractions).

1. How do you add a new topic to the global nav bar (on the left)?

   Update the [data files](https://gitlab.com/gitlab-org/gitlab-docs/tree/main/content/_data). For more information, see [Global navigation](https://docs.gitlab.com/ee/development/documentation/site_architecture/global_nav.html).

1. How do you differentiate between features that exist only in certain [tiers](https://about.gitlab.com/handbook/marketing/product-marketing/tiers/)?

   In the documentation, [badges](https://docs.gitlab.com/ee/development/documentation/styleguide/#product-tier-badges) are added to features specific to a tier.

   Badges may be listed next to a title (for example, `# Epic Issues API **(ULTIMATE)**`) or inline with content.

1. Where can you find which stage/group labels to add to an issue/MR and which technical writer to assign?

   For details on who owns what, see [Product sections, stages, groups, and categories](https://about.gitlab.com/handbook/product/categories/).

   For a list of technical writers and their area of responsibility, see [Assignments](https://about.gitlab.com/handbook/engineering/technical-writing/#assignments).

1. Which labels must be added to MRs that have changes to the documentation?

   See the list of [Documentation labels](https://docs.gitlab.com/ee/development/documentation/workflow.html#documentation-labels).

1. What is the correct format for linking one doc to another in `gitlab/doc/*`?

   If the link is in the same project, use a relative link. If it's in the `runner`, `omnibus`, or `chart` projects, use a direct link.

   Learn more about [GitLab preferences for links](https://docs.gitlab.com/ee/development/documentation/styleguide/#links).

   Learn more about [the Markdown used for links](https://docs.gitlab.com/ee/user/markdown.html#links).

1. When you add suggestions to an MR (by adding a comment and then clicking the **Insert suggestion** button), how do you make suggestions to multiple lines?

   [This content about multi-line suggestions](https://docs.gitlab.com/ee/user/project/merge_requests/reviews/suggestions.html#multi-line-suggestions) should help you understand.
