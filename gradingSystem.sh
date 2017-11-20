echo " Student Name"
read name
if [[ "$name" =~ ^-?[0-9]+$ ]] || [[ "$name" =~ ^-?[0-9]*[.,] ]]
then
echo " Pleas enter text not numbers"
read name
fi

echo "Student ID"
read studentid
while ! [[ $studentid =~ ^-?[[:digit:]]+$ ]]; do
	echo "Please enter Student ID Number: --ONLY NUYMBERS -- "
	read studentid
done



echo "Gender"
read gender


echo "Assignment Mark (20% as max)"
read assignment

while [ $assignment -gt 20 ]
do
echo "enter less than 20"
read assignment 
done

echo "Lab Participation Mark (10% as a max)"
read lab

while [ $lab -gt 10 ]
do
echo "enter less than 10"
read lab 
done


echo "Quiz marks (10% as a max)"
read quiz

while [ $quiz -gt 10 ]
do
echo "enter less than 10"
read quiz 
done


echo "Mid Term Marks (30% as a max)"
read midterm

while [ $midterm -gt 30 ]
do
echo "enter less than 30"
read midterm
done


echo "Final marks (30% as a max)"
read final
while [ $final -gt 30 ]
do
echo "enter less than 30"
read final 
done




Overallmarks=$(expr $assignment + $lab + $quiz + $midterm + $final)
echo "Overall marks are: $Overallmarks" 


if [[ $Overallmarks -gt 90 && $total -le 100 ]]; then
	finalgrade="A"
echo $finalgrade
	
elif [[ $Overallmarks -eq 90 ]]; then
	finalgrade="A-"
echo $finalgrade
	
elif [[ $Overallmarks -gt 80 && $total -lt 90 ]]; then
	finalgrade="B"
echo $finalgrade

elif [[ $Overallmarks -eq 80 ]]; then
	finalgrade="B-"
echo $finalgrade

elif [[ $Overallmarks -gt 70 && $total -lt 80 ]]; then
	finalgrade="C"
echo $finalgrade

elif [[ $Overallmarks -eq 70 ]]; then
	finalgrade="C-"
echo $finalgrade

elif [[ $Overallmarks -ge 60 && $total -lt 70 ]]; then
	finalgrade="D"
echo $finalgrade

elif [[ $Overallmarks -lt 60 ]]; then
	finalgrade="F"
echo $finalgrade

fi

echo "name", "studentid", "gender", "assignment", "lab", "quiz", "midterm", "final", "Overallmarks", "finalgrade" >> OSSGrades.csv

echo "$name", "$studentid", "$gender", "$assignment", "$lab", "$quiz", "$midterm", "$final", "$Overallmarks", "$finalgrade" >> OSSGrades.csv
