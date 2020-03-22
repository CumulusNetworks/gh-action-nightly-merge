(This is a fork of [robotology/gh-action-nightly-merge](https://github.com/robotology/gh-action-nightly-merge))
# Scheduled Branch Merge

This automatically merges one branch into another based on a cron schedule using [Github Actions](https://github.com/features/actions).

The two files of note:
**action.yml** - Defines the variables that are used in the script.
**entrypoint.sh** - This is the script that is executed by the Github Action.

## Entrypoint.sh
This fork has greatly simplified the original script from robotology for the use case of the [Cumulus Documentation](github.com/cumulusnetworks/docs) team.

This script uses `source_branch` and `target_branch` variables and will merge the `source_branch` into the `target_branch` every day at 12PT.
