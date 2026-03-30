CRAN comments
====

## Test environments

Local macOS - R 4.4.2
Remote macOS builder - R 4.6
Remote windows server 2022 (winbuilder) - R-release
Remote windows server 2022 (winbuilder) - R-devel

## R CMD check results

No ERRORS, WARNINGS or NOTES 

## Downstream dependencies

No issues

##
Response to CRAN review comments

1) Description field expanded to include information about palette range and compatibility with ggplot2.
 
2) Replaced print() in leaderboard(), bird_search(), bird_menu() with return(), as these functions provide information (now returned as 'character' types) that
users may want to use downstream.
 
3) Updated bird_palette_visualizer() to no longer write to pdf by default. If a user wants a PDF, they must specify a path or else an error is returned.

4) Added on.exit() functionality to bird_palette_visualizer().
