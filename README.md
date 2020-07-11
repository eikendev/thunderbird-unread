[![Build status](https://img.shields.io/travis/eikendev/thunderbird-unread/master)](https://travis-ci.com/github/eikendev/thunderbird-unread/builds/)
![License](https://img.shields.io/github/license/eikendev/thunderbird-unread)

## About

This script outputs how many emails are unread in each account of Thunderbird.
It can automatically detect your default Thunderbird profile.

## Usage

To use the script you have to provide it with the accounts you want to query.
This is done by creating symbolic links in the `ImapMail` directory of Thunderbird.
The links must have the file extension `.unread` and point to one of the IMAP directories (POP3 is not supported).
By naming the links in the alphabetical order of your choice you can also choose the order of the output.

Be aware that I have only tested the script using the Maildir format of Thunderbird.

## Requirements

Thunderbird Unread depends on [ripgrep](https://crates.io/crates/ripgrep) and [inotify-tools](https://github.com/inotify-tools/inotify-tools).
