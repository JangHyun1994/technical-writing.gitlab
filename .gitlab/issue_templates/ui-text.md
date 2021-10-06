# Update UI text to meet our style guidelines

<!-- Be sure to name this issue similar to the following: -->
<!-- `OKR: [Settings section]/[Section name] - Review and revise settings-related UI text` -->

Update this section of the UI to meet the [Pajamas](https://design.gitlab.com/) style guidelines: `**Settings > General > Naming, topics, avatar**`.

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
- [ ] Don't use "allow" unless you're specifically talking about security. For example, "Allows users to fork the repo" should be "Users can fork the repo."
- [ ] Do a final review of everything you've updated and consider whether it affects the docs. If it does, open a follow-up issue or an MR to update the docs.

Do not change the text for settings themselves. If you do feel strongly that a setting name should be changed, open a follow-up issue and work with a PM to change it. When you change a setting, the related docs also need to change. These changes are outside the scope of this issue.

## How to update the text

After you've reviewed the text, you'll need to implement any changes or improvements in the GitLab application. For an orientation demo on finding and updating UI text, take a look at this 6-minute [video](https://youtu.be/Gs3K0_VjlpM).

1. Search the code for the section name to find the UI text to be modified. You may need to modify more than
   one file to complete your text update work for the section. For example, seeing `render_if_exists` for an
   item in the section would have you also go to that file for potential additional changes to the section.
1. Review your changes in the GDK to ensure they're correct.
1. Generate the `.pot` files by running:

   ```shell
   bin/rake gettext:regenerate
   ```

1. Generate a changelog by running:

   ```shell
   bin/changelog -m "Updated UI text to match style guidelines"
   ```

1. Open an MR that's linked to this issue, and then assign it to another writer for review/approval.
1. Assign to the roulette-recommended engineer for merge.

Associated with https://gitlab.com/gitlab-org/technical-writing/-/issues/278

/label ~"Technical Writing" ~OKR ~"UI text"
