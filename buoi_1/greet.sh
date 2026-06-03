#!home/jianglee/linux_embedded/exercises/buoi_1

#
# 1. Target: learn about shell arguments:
# - Arguments can be passed to Shell Script by list them behind the script when run it.
# - Syntax: bash <file_name>.sh <arrg_1> <arg_2> ....
# - VD: 
# bash greet.sh jianglee 23
# (read more with C argument, this is similar to shell arguments)
# 
# 2. Some script parameters:
# - $0: Name of the script being executed.
# - $1 to $9: The first nine arguments passed to the script.
# - ${10} and up: Arguments past the ninth must be enclosed in curly braces.
# - $#: Total number of arguments passed.
#
# 3. Some Numerical comparison operator:
# - for some reason, user can not use regular comparison operation: <, >, =, <=, >=.
#   symbol      meaning
#    -eq	    equal to
#    -ne	    not equal to
#    -lt	    less than
#    -le	    less than or equal to
#    -gt	    greater than
#    -ge	    greater than or equal to
# 
if [ $# -lt 2 ]; then
    echo "not enough arguments"
    echo "Usage: $0 <name> <age>"
    exit 1
fi

# with this example, 
# first argument "janglee" will be assigned to $1.
# second argument "253" will be passed to $2.

echo "Hello, my name is $1 and I am $2 years old."
echo "Total arguments received: $#"