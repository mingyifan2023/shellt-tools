ping google.com  | xargs -I{} bash -c 'echo $(date +%F_%T) "{}" '
