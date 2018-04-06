#!/bin/bash

config()
{
	# Verify that a compatible module can be found exists
	./scripts/check_python -v | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided Python."
	fi
}

prep() { :; }
build() { :; }
