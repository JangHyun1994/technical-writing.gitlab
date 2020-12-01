# Update UI text to meet our style guidelines

Update this section to meet our style guidelines: `**Settings > General > Naming, topics, avatar**`.

These strings are in this file in the GitLab repo: `/app/views/projects/edit.html.haml`

## Review grammar and style

At a minimum, address these issues.

1. [ ] Present tense rather than future. https://design.gitlab.com/content/voice-tone#instructions
1. [ ] No periods for settings or headings. https://design.gitlab.com/content/punctuation#periods
1. [ ] Periods for all help text.
1. [ ] No repetitive or unnecessary text. (Things like: This setting is... or "Use this setting to.")
1. [ ] Oxford comma used correctly. (This, this, and this.)
1. [ ] Language is parallel. (Review all the settings in the section to ensure they are similarly-worded.) https://design.gitlab.com/content/voice-tone#parallelism
1. [ ] If a setting is optional, then "optional" is in parentheses at the end of the setting name. https://design.gitlab.com/components/form/#required-information
1. [ ] Latinisms (i.e., e.g.) removed. https://design.gitlab.com/content/voice-tone#avoid-latin-abbreviations
1. [ ] Use "More information" to link to docs, rather than any other phrase. (Not: "Learn more about.")

Do not change the text for settings themselves. If you do feel strongly that a setting name should be changed, open a follow-up issue and work with a PM to change it. When you change a setting, the related docs also need to change. These changes are outside the scope of this issue.

## How to update the text

1. Open the file and make your changes. View them in the GDK to ensure they are correct.
1. Generate the .pot files by running: bin/rake gettext:regenerate
1. Generate a changelog by running: bin/changelog -m "Message about change"
1. Open an MR and assign it to another writer for review and merge.


