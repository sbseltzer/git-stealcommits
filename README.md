# README

Accidentally commit using the wrong user credentials?

Use this script to overwrite ALL commits with the specified email, replacing the previous credentials with your currently configured credentials!

But uh... you probably shouldn't use this if you don't understand the consequences of doing that...

Form: `./git-stealcommits.sh <steal-commits-from-this-email>`

## Usage Example

`./git-stealcommits.sh someone@example.com`

The above will search for commits with made by `someone@example.com`, and replace the user information with your currently configured `user.name` and `user.email`.

Try it out on this repository! No harm done, though you might not be able to pull properly after that since the histories will then appear divergent.
