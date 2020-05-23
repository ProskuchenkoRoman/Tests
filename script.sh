#!/bin/bash

Help()
{
echo "full minimal режим отображения: полный краткий"
echo "hiden withouthiden "
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
}

style="full"
styleLong="full"
dirstyle="ndir"
sortby=""

listing()
{
	list_par1=""
	list_par2=""
	list_par3=""
	sortby=""
	if [ full = $styleLong ]
	then
		list_par1=-a
	fi
	if [ full = $style ]
	then
		list_par2=-l
	fi
	if [ odir = $dirstyle ]
	then
		list_par3="-d */"
	fi

	ls $1 $list_par1 $list_par2 $list_par3 $sortby
}

change_dir()
{
	if [ -d $param1 ] 
	then			
	cd	$param1
	listing "./"
	fi
}

for param in "$@"
do
	case "$param" in
		-h | --help)
			Help
			exit
		   ;;
		-d | --directory)
			pwd
			;;
	esac
done

while [ true ]
do
	read my_comand param1 param2 param3
	case $my_comand in
		full)
			style=full;;
		minimal)
			style=min;;
		hiden)
			styleLong=full;;
		withouthiden)
			styleLong=min;;
		onlydir)
			dirstyle=odir
			;;
		notonlydir)
			dirstyle=ndir
			;;
		sort)
			sortby=$param1
			;;
		change)
			change_dir
			;;
		copy)
			cp $param1 $param2
			listing $param2
			;;
		move)
			mv $param1 $param2
			listing $param2
			;;
		remove)
			rm -r $param1
			listing "./"			
			;;
		help)
			Help
			;;
		exit)
			exit;;
		*)
			echo "No such a command"
		;;
	esac
done
