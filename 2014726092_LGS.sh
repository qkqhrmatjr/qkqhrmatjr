#!/bin/bash

echo "=== print file information ==="
echo "current directory : `pwd` "


total=`ls -l | wc -l`
total=`expr $total - 1`
echo "the number of elements : $total "


number=1



for varone in $(ls | sort -dr)
do	

####################################3333
if [ -d $varone  ]
then

        echo "[$number] `stat $varone --print %n`"
        number=`expr $number + 1`


        echo "----------------INFORMATION-------------------"
	echo "[34m1)file type : `stat $varone --print %F` "
        echo "[0m2)file size : `stat $varone --print %s` "
        echo "3)creation time : `stat $varone --print %y` "
        echo "4)permission : `stat $varone --print %a` "
	juso=`pwd`
        echo "5)absolute path : `find $juso/$varone -name $varone`"
        echo "6)relative path : `find . -name $varone`" 
	echo "----------------------------------------------"
    
        numbertwo=1
	
	cd $varone
	
	if [ `ls -l | wc -l` -gt  1 ]
	then

##################################################################################
	
		
		

        	for vartwo in $(ls | sort -dr)
        	do

		if [ -d $vartwo ]
                then       
                        echo "	[$numbertwo] `stat $vartwo --print %n`"
                        numbertwo=`expr $numbertwo + 1`
                       

			echo "	----------------INFORMATION-------------------"
			echo "	[34m1)file type : `stat $vartwo --print %F` "
			echo "	[0m2)file size : `stat $vartwo --print %s` "
			echo "	3)creation time : `stat $vartwo --print %y` "
			echo "	4)permission : `stat $vartwo --print %a` "
			juso=`pwd`
			echo "	5)absolute path : `find $juso -name $vartwo`"
			cd ..
			echo "	6)relative path : `find ./$varone -name $vartwo`"
			cd $varone
			echo "	----------------------------------------------"
		fi
		done

##################################################################################




                for vartwo in $(ls | sort -dr)
                do



		if [ "`stat $vartwo --print %F`" = "일반 파일" ] || [ "`stat $vartwo --print %F`" = "일반 빈 파일" ]
                then
                        echo "  	[$numbertwo] `stat $vartwo --print %n`"
                        numbertwo=`expr $numbertwo + 1`


                        echo "  	----------------INFORMATION-------------------"
                        echo "  	[0m1)file type : `stat $vartwo --print %F` "
                        echo "  	[0m2)file size : `stat $vartwo --print %s` "
                        echo "  	3)creation time : `stat $vartwo --print %y` "
                        echo "  	4)permission : `stat $vartwo --print %a` "
                        juso=`pwd`
			echo "  	5)absolute path : `find $juso -name $vartwo`"
                        cd ..
		        echo "  	6)relative path : `find . -name $vartwo`"
                        cd $varone
			echo "  	----------------------------------------------"
                fi
                done



##################################################################################




                for vartwo in $(ls | sort -dr)
                do


		if [ "`stat $vartwo --print %F`" != "일반 파일" ] && [ "`stat $vartwo --print %F`" != "일반 빈 파일" ] && [ ! -d $vartwo ]
                
                then
                        echo "  	[$numbertwo] `stat $vartwo --print %n`"
                        numbertwo=`expr $numbertwo + 1`


                        echo "  	----------------INFORMATION-------------------"
                        echo "  	[32m1)file type : `stat $vartwo --print %F` "
                        echo "  	[0m2)file size : `stat $vartwo --print %s` "
                        echo "  	3)creation time : `stat $vartwo --print %y` "
                        echo "  	4)permission : `stat $vartwo --print %a` "
                        juso=`pwd`
			echo "  	5)absolute path : `find $juso -name $vartwo`"
                       cd ..
			 echo "  	6)relative path : `find . -name $vartwo`"
                       cd $varone
			 echo " 		----------------------------------------------"
                fi
                done

##################################################################################

	fi

	cd ..
fi

done

#############################


for varone in $(ls | sort -dr)
do

if [ "`stat $varone --print %F`" = "일반 파일" ] || [ "`stat $varone --print %F`" = "일반 빈 파일" ]
then

        echo "[$number] `stat $varone --print %n`"
        number=`expr $number + 1`


        echo "----------------INFORMATION-------------------"
	echo "[0m1)file type : `stat $varone --print %F` "
        echo "[0m2)file size : `stat $varone --print %s` "
        echo "3)creation time : `stat $varone --print %y` "
        echo "4)permission : `stat $varone --print %a` "
	juso=`pwd`
        echo "5)absolute path : `find $juso/$varone -name $varone`"
        echo "6)relative path : `find . -name $varone`"
        echo "----------------------------------------------"
fi

done
#############################



for varone in $(ls | sort -dr)
do


if [ "`stat $varone --print %F`" != "일반 파일" ] && [ "`stat $varone --print %F`" != "일반 빈 파일" ] && [ ! -d $varone ] 
then

        echo "[$number] `stat $varone --print %n`"
        number=`expr $number + 1`


        echo "----------------INFORMATION-------------------"
	echo "[32m1)file type : `stat $varone --print %F` "
        echo "[0m2)file size : `stat $varone --print %s` "
        echo "3)creation time : `stat $varone --print %y` "
        echo "4)permission : `stat $varone --print %a` "
        juso=`pwd`
	echo "5)absolute path : `find $juso/$varone -name $varone`"
        echo "6)relative path : `find . -name $varone`"
        echo "----------------------------------------------"
fi

done
##############################
