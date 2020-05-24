# bash

## Quotes

With single quotes the shell is told not to interfe with the string at all.
With double quotes there still will be variable and tilde expansions and command substitutions

## Output

To send error to a file use \$ myprogram 1> msgs.out 2> msgs.err ( 2> stands for STDERR)

To redirect STDERR and STDOUT to same place/file use \$ myprog >& outfile or (&>)

Commands enclosed within parentheses run in another instance of a shell called subshell 

Pass output from program to another using pipe(|) \
Pipes only work with STDOUT
> commands run using pipes are run in seperate subshells

Use tee command to split the output into two identical streams, one that is written to a file and the other that is written to standard out. Can be used to debug output within pipe

#### Command substitution

> use $(command) to run a command in a subshell. The output of the command is substituted in place of the $() phrase

Newlines in the output are replaced with a space character, so several lines of output become several parameters on the command line.\
Can be used with commands that dont take input from stdin like rm \
`rm $(find . -name '*.class')`




