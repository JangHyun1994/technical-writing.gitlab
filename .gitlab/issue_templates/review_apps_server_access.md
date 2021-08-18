Use this template if you want to gain access to the server that hosts the
GitLab Docs [review apps](https://docs.gitlab.com/ee/development/documentation/review_apps.html).

## New member

- [ ] Add a comment with the **public** SSH key that you will use to log into the server:
  - You can use the one you use for GitLab.com (visit `https://gitlab.com/<username>.keys`).
  - Or you can [create one](https://docs.gitlab.com/ee/ssh/index.html#generate-an-ssh-key-pair) from scratch.
- [ ] Co-assign an existing member to this issue. You can ask in `#tw-team` if you need to find a reviewer.
- [ ] Edit `~/.ssh/config` and add the following (the `deploy` user should be left as is):
  ```
  Host docs-review
    HostName axil-review-app.gitlap.com
    User deploy
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/<private_key>
  ```

  After your key is added, you can SSH into the server with:
  ```shell
  ssh docs-review
  ```

## Existing member

- [ ] SSH into the server and append the new member's public SSH key into
      `/home/deploy/.ssh/autorized_keys`. Save the file, open a new terminal
      window, and verify you can still SSH into the server.
- [ ] Ping the new member in a comment to let them know that you added their key.

/assign me
