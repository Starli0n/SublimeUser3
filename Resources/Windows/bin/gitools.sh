#!/bin/sh

# Windows Git Tools

BASEDIR=$(dirname $0)

if [ "$#" -eq 0 ] ; then
	exit

# Shell Git
elif [ "$1" = "shell" ] ; then
	$2 $3 $4 $5 $6 $7 $8 $9

# Print global Git config
elif [ "$1" = "config" ] && [ "$#" -eq 2 ] ; then
	PYBIN=`which python`
	error=0
	if [ -z "$PYBIN" ]; then
		error=1
	else
		ANYBIN=${BASEDIR}/../../Any/bin
		"$PYBIN" "${ANYBIN}/colorcfg.pyc" "${HOMEDRIVE}${HOMEPATH}\.gitconfig"
		error=$?
	fi

	if [ "$error" -ne 0 ]; then
		cat "${HOMEDRIVE}${HOMEPATH}\.gitconfig"
		echo Error=$error
	fi

# Diff Tool
elif [ "$1" = "difftool" ] && [ "$#" -eq 3 ] ; then
	if [ "$2" = "/dev/null" ] ; then
		echo FileN : $3
		"${TOOLS}\SublimeText3\sublime_text.exe" -a "$3"
	elif [ "$3" = "/dev/null" ] ; then
		echo FileD : $2
	else
		echo Comparing...
		echo "   Left : $2"
		echo "  Right : $3"
		echo
		"C:\Program Files (x86)\WinMerge\WinMergeU.exe" -e -ub -dl "Base" -dr "Mine" "$2" "$3"
		"${TOOLS}\SublimeText3\sublime_text.exe" -a "$3"
	fi

# Merge Tool
elif [ "$1" = "mergetool" ] && [ "$#" -eq 5 ] ; then
	echo Launching BCompare.exe
	echo LOCAL_ : $2
	echo REMOTE : $3
	echo BASE__ : $4
	echo MERGED : $5
	BCompare.exe "$2" "$3" "$4" "$5"

# Log Feature
elif [ "$1" = "logfeature" ] && [ "$#" -eq 2 ] ; then
	PARENT=`git rev-parse --short "$2^2"`
	if [ "$?" -eq 0 ]; then
		git ll $PARENT
	else
		echo "(No 2nd parent found for this commit)"
	fi

fi
