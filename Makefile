TARGET := thunderbird-unread

.PHONY: check
check:
	shellcheck ${TARGET}
