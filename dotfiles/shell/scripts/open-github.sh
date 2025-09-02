#! /bin/bash
cd $(tmux run "echo #{pane_start_path}")
url=$(git remote get-url origin)

if [[ "$url" =~ ^git@ ]]; then
    # Remove "git@" and replace ":" with "/"
    url="https://${url#git@}"
    url="${url/://}"
    # Remove trailing ".git"
    url="${url%.git}"
fi

if [ "$INSIDE_VM" = "1" ]; then
    ssh szymon@192.168.1.245 "xdg-open '$url'" >/dev/null 2>&1 &
else
    xdg-open "$url" >/dev/null 2>&1 &
fi
