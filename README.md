# messageboard


A shell-based messaging system

## Features

`messageboard` currently has support for a few operations.
It was originally designed to be accessed over SSH, then started, and used through that.

## Plans

Plans have been made to make this a networked application.
It would be rewritten in C and would use UNIX sockets for communication with other computers on the `messageboard` network.
The idea is that each client would have a local identifier key (which, during setup, would be associated with a username and email) and would, on connection to the `messageboard` network, synchronize local messages with those on the master server.
There would be a "master server", containing a copy of all messages and some metadata about each, including the identifier key of whomever posted it.

Posts would be composed in the form of Markdown files, and would then be passed to the `messageboard` binary for upload.
Local identifier keys would simply be random hashes, unique to a user.
