[![Build status](https://img.shields.io/github/workflow/status/eikendev/eikendev/Main)](https://github.com/eikendev/eikendev/actions)
![License](https://img.shields.io/github/license/eikendev/thunderbird-unread)

## About

This script outputs how many emails are unread in each account of Thunderbird.
It can automatically detect your default Thunderbird profile.

## Usage

To use the script you have to provide it with the accounts you want to query.
This is done by creating symbolic links in the `ImapMail` directory of Thunderbird.
The links must have the file extension `.unread` and point to one of the IMAP directories (POP3 is not supported).
By naming the links in the alphabetical order of your choice you can also choose the order of the output.

The following is an example of how it could be set up.
```
$ pwd
/home/YourUsername/.thunderbird/YourProfile/ImapMail
$ ls -la
(...)
lrwxrwxrwx. (...) 01.unread -> mail.example1.com
lrwxrwxrwx. (...) 02.unread -> mail.example2.com
drwxr-xr-x. (...) mail.example1.com
drwxr-xr-x. (...) mail.example2.com
```

Be aware that I have only tested the Maildir format of Thunderbird.

I recommend using [systemd](https://systemd.io/) to run the script.
See below for an example on how the service file should look like.
```ini
[Unit]
Description=Thunderbird Unread

[Service]
Type=fork
ExecStart=/your/path/to/bin/thunderbird-unread
Restart=on-success
RestartSec=5s

[Install]
WantedBy=default.target
```

## Requirements

Thunderbird Unread depends on [ripgrep](https://crates.io/crates/ripgrep) and [inotify-tools](https://github.com/inotify-tools/inotify-tools).
