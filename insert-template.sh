#!/usr/bin/bash

template_dir="$HOME/develop/templates"
template=$(
  find "$template_dir" \
       -mindepth 1 \
       -maxdepth 1 \
       -type d \
       \( -not -iname ".*" \) \
    | rev \
    | cut -d "/" -f 1 \
    | rev \
    | fzf --preview "cat '$template_dir/{}/_init.sh'" \
          --preview-window="up:70%"
)

if [[ -n $template ]] ; then
  rsync -r --exclude "_init.sh" "$template_dir/$template/" .
  if [[ -x "$template_dir/$template/_init.sh" ]] ; then
    "$template_dir/$template/_init.sh"
  fi
fi
