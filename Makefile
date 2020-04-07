TARGET := thunderbird-unread

.PHONY: all
all: check

.PHONY: check
check:
	shellcheck ${TARGET}
