#!/bin/bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google/cloud-sdk/path.zsh.inc' ]; then
	. '/opt/google/cloud-sdk/path.zsh.inc'

	function gcloud_storage_cat() {
		gcloud storage cat gs://"$1" | jq "${@:2}"
	}
	alias gcat="gcloud_storage_cat"
fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google/cloud-sdk/completion.zsh.inc' ]; then . '/opt/google/cloud-sdk/completion.zsh.inc'; fi
