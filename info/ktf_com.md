# Commands

|Command|Quick Command|Description|
-------|---------|-------|
show modules|showm|Show modules 
show options|sop|Show options module
show full options|sfop|Show full options module
use|use|Use module 
getinfo|getinfo	| Show information of module
set|set	|Change valor of a parameter
back|back|Backing or return
run|run|run Module
update|u|Update framework
exit|x|Exit of framework
invoke||Open a module in one new console 
help|h|Show help
session||Session command
clear|c|Clear screen
s::|s::|Save Variable
x::|x::|Execute System Commands
f::|f::|Execute Functions


## f::

Functions can be called with 'f::'. They allow the user to do more complex things from within the framework. 

If the function has arguments, they are listed after the().

|Name|Parameters|Description|
----|----------|-----------|
get_aps()|Interface, timeout|Scan Access point's
get_interfaces()|None|Get Network Interfaces
get_monitors_mode()|None|Get Monitor Interfaces Wireless
start_monitor()|Interface|Start Monitor Mode in Interface
get_local_ip()|None|Get local IP
get_external_ip()|None|Get External IP
get_gateway()|None|Get Gateway/Router IP


### USE

     f::Functions(Parameters)   <-->  f::get_aps(mon0,10)
     f::Functions               <-->  f::get_local_ip

## x::

Execute System Commands

### USE

     x::ls -a