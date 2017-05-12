
## Intro

Repo to demonstrate bug introduced in coverage 4.4. Just run showbug.sh.

Add two runs of coverage2clover to demonstrate two aspects of the bug. One is due to the new 4.4
feature that doesn't output an unambiguous filespec for two files (foo, bar) that another tool can
use to open the file. The other shows a problem with two __init__ files in two modules that fails
to output both.

## Issues

- coverage2clover issue - https://github.com/tumb1er/coverage2clover/issues/10
- coverage issue - https://bitbucket.org/ned/coveragepy/issues/578/incomplete-file-path-in-xml-report

