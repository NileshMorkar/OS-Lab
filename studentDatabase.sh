clear
while [ 1 ]
do
	echo "1.Create\n2.Display\n3.Insert\n4.Search\n5.Modify\n6.Delete\n7.Exit\n"

	echo "Enter Your Choice =\c"
	read ch
	case $ch in
	1)
		echo "Enter File Name :"
		read fname
		if [ -e $fname ]	
		then
			echo "File Already Exists"
		else 
			>> $fname
			echo "File Created Successfully"
		fi
	;;
	2)
		echo "Enter File Name:"
		read fname
		if [ -e $fname ]
		then
			echo "The Content Of File:"
			sort -n $fname
		else
			echo "File Not Exists"
		fi
	;;
	3)
		echo "Enter The File Name:"
		read fname
		if [ -e $fname ]
		then
			echo -n "Enter The Roll Number:"
			read roll
			grep -w "$roll" $fname
			ans=$?
			echo answer=$ans
			if [ $ans -eq 0 ]
			then
				echo "Record Already Present"
		else
			echo -n "Enter Name:"
			read name
			echo $roll $name >> $fname
			echo "Record Inserted Successfully"
		fi
		else
			echo "File Not Exists"
		fi
	;;
	4)
		echo -n "Enter The File Name:"
		read fname
		if [-e $fname ]
		then	
			echo -n "Enter The Roll Number:"
		read roll
		grep -w "$roll" $fname
		ans=$?
		if [ $ans -eq 0 ]
		then
			echo "Record Found"
		else
			echo "Record Not Found"
		fi
		else
			echo "File Not Exists"
		fi
		;;

	5)
		echo -n "Enter The File Name:"
	        read fname
		if [ -e $fname ]clear
while [ 1 ]
do
	echo "1.Create\n2.Display\n3.Insert\n4.Search\n5.Modify\n6.Delete\n7.Exit\n"

	echo "Enter Your Choice =\c"
	read ch
	case $ch in
	1)
		echo "Enter File Name :"
		read fname
		if [ -e $fname ]	
		then
			echo "File Already Exists"
		else 
			>> $fname
			echo "File Created Successfully"
		fi
	;;
	2)
		echo "Enter File Name:"
		read fname
		if [ -e $fname ]
		then
			echo "The Content Of File:"
			sort -n $fname
		else
			echo "File Not Exists"
		fi
	;;
	3)
		echo "Enter The File Name:"
		read fname
		if [ -e $fname ]
		then
			echo -n "Enter The Roll Number:"
			read roll
			grep -w "$roll" $fname
			ans=$?
			echo answer=$ans
			if [ $ans -eq 0 ]
			then
				echo "Record Already Present"
		else
			echo -n "Enter Name:"
			read name
			echo $roll $name >> $fname
			echo "Record Inserted Successfully"
		fi
		else
			echo "File Not Exists"
		fi
	;;
	4)
		echo -n "Enter The File Name:"
		read fname
		if [-e $fname ]
		then	
			echo -n "Enter The Roll Number:"
		read roll
		grep -w "$roll" $fname
		ans=$?
		if [ $ans -eq 0 ]
		then
			echo "Record Found"
		else
			echo "Record Not Found"
		fi
		else
			echo "File Not Exists"
		fi
		;;

	5)
		echo -n "Enter The File Name:"
	        read fname
		if [ -e $fname ]
		then 
			echo -n "Enter The Roll number "
			read roll 
			grep -w "$roll" $fname
			ans=$?
			if [ $ans -eq 0 ]
			then
				echo -n "Enter New Roll Ans New Name:"
				read nroll nname
				grep -w "$nroll" $fname
				ans=$?
				if [ $ans -eq 0 ]
				then 
					echo "Record Already Present Please Try another Roll Number"
				else
					grep -v "$roll" $fname >> temp
					echo "$nroll $fname" >> temp
					rm $fname
					cp temp $fname
					rm temp
					echo "Record Successfully Modified"
				fi
			else
				echo "Record Not Present"
			fi
		else 
			echo "File Not exists"
		fi
		;;
	6)
		echo -n "Enter The File Name"
		read fname
		if [ -e $fname ]
		then 
			echo -n "Enter The Roll Number:"
			read roll
			grep -w "$roll" $fname
			ans=$?
			if [ $ans -eq 0 ]
			then
				grep -v "$roll" $fname >> temp
				rm $fname
				cp temp $fname
				rm  temp
				echo "Record Deleted Succeessfully"
			else
				echo "Record doesn't Found"
			fi
		else 
			echo "File Not Exists"
		fi
		;;	

	7) exit
		;;
	*) 
		echo "Invalid Choice"
	;;
esac
done

		then 
			echo -n "Enter The Roll number "
			read roll 
			grep -w "$roll" $fname
			ans=$?
			if [ $ans -eq 0 ]
			then
				echo -n "Enter New Roll Ans New Name:"
				read nroll nname
				grep -w "$nroll" $fname
				ans=$?
				if [ $ans -eq 0 ]
				then 
					echo "Record Already Present Please Try another Roll Number"
				else
					grep -v "$roll" $fname >> temp
					echo "$nroll $fname" >> temp
					rm $fname
					cp temp $fname
					rm temp
					echo "Record Successfully Modified"
				fi
			else
				echo "Record Not Present"
			fi
		else 
			echo "File Not exists"
		fi
		;;
	6)
		echo -n "Enter The File Name"
		read fname
		if [ -e $fname ]
		then 
			echo -n "Enter The Roll Number:"
			read roll
			grep -w "$roll" $fname
			ans=$?
			if [ $ans -eq 0 ]
			then
				grep -v "$roll" $fname >> temp
				rm $fname
				cp temp $fname
				rm  temp
				echo "Record Deleted Succeessfully"
			else
				echo "Record doesn't Found"
			fi
		else 
			echo "File Not Exists"
		fi
		;;	

	7) exit
		;;
	*) 
		echo "Invalid Choice"
	;;
esac
done
