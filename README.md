# bash

## Quotes

With single quotes the shell is told not to interfe with the string at all.
With double quotes there still will be variable and tilde expansions and command substitutions

## Output
---
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
Can be used with commands that dont take input from stdout like rm \
`rm $(find . -name '*.class')`


## Command Execution
---
> To see the status of the last bash script/command use variable `$?`

To run a long running job in the background use & \
`find / -name "*.*" & ` \
To bring it back to foreground, use fg and pause using Ctrl-Z

Setting the -e flag will cause the shell to exit when a command fails

The `&` still runs the job as a child process of the bash shell and will close if you exit the
shell. To have the process running even if it closes use nohup process &

## Conditional/Branching 
---
if list : returns true based on the status of the last command in list

## File characteristics
---
To check multiple and or in test use \
if [ -r "$FN" -a \( -f "$FN" -o  -p "$FN" \) ] \
where -a is and condition and -o or. For parentheses, be sure to escape their special meaning from the shell by putting a backslash before each or by quoting each parenthesis

`if [ -z "$VAR" ]` will return true if VAR is empty \
-eq for numeric comparison and == (or =) for string comparision

> For pattern matching use double bracket compounded construct and dont put pattern in quotes
[[ "$FILENAME" == *.jpg ]]

For extended pattern matching use the following command to turn on shell options
shopt -s extglob \
if [[ "$FN" == *.@(jpg|jpeg) ]] -> The first character preceding the parentheses says whether the list should match just one occurrence of a pattern in the list


