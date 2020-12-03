# Update UI text to meet our style guidelines

<!-- Be sure to name this issue similar to the following: -->
<!-- `OKR: [Settings section]/[Section name] - Review and revise settings-related UI text` -->

Update this section of the UI to meet our style guidelines: `**Settings > General > Naming, topics, avatar**`.

These strings are in this file in the GitLab repo: `/app/views/projects/edit.html.haml`

**Remember:** With UI text, less is more. If you need to go into detail, link to the docs.

## Review grammar and style

At a minimum, address these issues:

- [ ] Present tense rather than future. https://design.gitlab.com/content/voice-tone#instructions
- [ ] Active voice. https://design.gitlab.com/content/voice-tone#active-voice
- [ ] No periods for settings or headings. https://design.gitlab.com/content/punctuation#periods
- [ ] Periods for all help text.
- [ ] No repetitive or unnecessary text. (Things like: This setting is... or "Use this setting to.")
- [ ] Oxford comma used correctly. (This, this, and this.)
- [ ] Language is parallel. (Review all the settings in the section to ensure they are similarly-worded.) https://design.gitlab.com/content/voice-tone#parallelism
- [ ] If a setting is optional, then "optional" is in parentheses at the end of the setting name. https://design.gitlab.com/components/form/#required-information
- [ ] Latinisms (i.e., e.g.) removed. https://design.gitlab.com/content/voice-tone#avoid-latin-abbreviations
- [ ] Do not use "allow" unless you're specifically talking about security. For example, "Allows users to fork the repo" should be "Users can fork the repo."
- [ ] Do a final review of everything you've updated and consider whether it affects the docs. If it does, open a follow-up issue or an MR to update the docs.

Do not change the text for settings themselves. If you do feel strongly that a setting name should be changed, open a follow-up issue and work with a PM to change it. When you change a setting, the related docs also need to change. These changes are outside the scope of this issue.

## How to update the text

After you've reviewed the text, you'll need to implement any changes or improvements in the GitLab application.

1. Open the file and make your changes.
1. Review your changes in the GDK to ensure they're correct.
1. Generate the `.pot` files by running:

   ```shell
   bin/rake gettext:regenerate
   ```

1. Generate a changelog by running:

   ```shell
   bin/changelog -m "Updated UI text to match style guidelines"
   ```

1. Open an MR and assign it to another writer for review/approval.
1. Assign to the roulette-recommended engineer for merge.

/label ~"Technical Writing" ~OKR ~"UI text"
