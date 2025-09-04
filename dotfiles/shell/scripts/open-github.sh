#!/usr/bin/env bash
cd $(tmux run "echo #{pane_start_path}")
url=$(git remote get-url origin)

https_url=$(echo $url | sed -E 's#git@([^:]+):#https://\1/#')

open $https_url | "Couldn't find a git repo"
