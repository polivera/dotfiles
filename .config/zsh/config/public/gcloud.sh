#!/bin/bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google/cloud-sdk/path.zsh.inc' ] || [ -f '/opt/google-cloud-cli/path.zsh.inc' ]; then
	# Source whichever file exists
	[ -f '/opt/google/cloud-sdk/path.zsh.inc' ] && . '/opt/google/cloud-sdk/path.zsh.inc'
	[ -f '/opt/google-cloud-cli/path.zsh.inc' ] && . '/opt/google-cloud-cli/path.zsh.inc'

	function gcloud_storage_cat() {
		if [[ "$1" == *.gz ]]; then
			gcloud storage cat gs://"$1" >/tmp/test.gz && gunzip /tmp/test.gz && cat /tmp/test | jq "${@:2}"
		else
			gcloud storage cat gs://"$1" | jq "${@:2}"
		fi
	}
	alias gcat="gcloud_storage_cat"
fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google/cloud-sdk/completion.zsh.inc' ]; then . '/opt/google/cloud-sdk/completion.zsh.inc'; fi
