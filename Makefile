TARGET := bin/thunderbird-unread

.PHONY: check
check:
	shellcheck ${TARGET}
