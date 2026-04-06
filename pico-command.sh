# Note: gokr-rsync errors if --delete tries to remove a pre-existing remote git-hooks/ dir
# (excluded locally). Omit --delete; overwrite files by name. Prune orphans manually if needed.
rsync -rv --exclude '.git*' --exclude 'pico-command.sh' --exclude 'git-hooks/' --exclude 'bookmark*' ../url-db/ pgs.sh:/url-db
