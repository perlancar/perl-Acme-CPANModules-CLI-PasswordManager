package Acme::CPANModules::CLI::PasswordManager;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => "List of various password manager CLIs on CPAN",
    description => <<'MARKDOWN',

Password manager CLIs are command-line tools which you can use to store and
retrieve password entries.

If you know of others, please drop me a message.

MARKDOWN
    entries => [
        {
            module => 'App::PasswordManager',
            script => 'password_manager',
            description => <<'MARKDOWN',

A simple script that lets you add, edit, list, and delete passwords from the
CLI. Passwords are stored in `~/.password_manager.json` in a simple JSON object
(hash) structure. Currently a very early release that still needs to be updated.

Pros:

- simplicity.

Cons:

- At the time of this writing (version 1.0.0) only the password hash is stored
  and returned, making this application unusable at the moment.
- Password must be entered as command-line argument, making it visible from
  process list and shell history, unless you explicitly disable those.
- Cannot add other fields to a record, e.g. comment/note, date, etc.
- Usernames are not encrypted.

MARKDOWN
        },

        {
            module => 'App::orgadb',
            script => 'orgadb-sel',
            description => <<'MARKDOWN',

A CLI to read entries from an addressbook file in a specific layout in Org
format. This tool can be used to read from a PGP-encrypted addressbook file, and
thus can also be used as a password retriever.

Pros:

- Standard tool and format for the data storage (PGP-encrypted Org file, which
  can be edited with Emacs).

Cons:

- Does not come with the functionality of adding/editing/removing entries. Use
  your editor like Emacs to do so.

MARKDOWN
        },
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
