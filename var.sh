#!/bin/bash

#{parameter-default}
parameter-default() {
	local var1=1
	local var2=2

	echo "var1=$var1, var2=$var2"
	echo "  var1 defined, \${var1-\$var2} outputs \$var1 (${var1-$var2})"
	echo "  var3 not defined, \${var3-\$var2} outputs \$var2 (${var3-$var2})"

	echo
	var1=
	echo "var1="
	echo "  var1 defined, \${var1-\$var2} outputs \$var1 (${var1-$var2})"
	echo "  var1 declared but set as null, \${var1:-\$var2} outputs \$var2 (${var1:-$var2})"
}


parameter-default
