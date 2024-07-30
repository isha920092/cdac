if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <roll_number>"
    exit 1
fi

rno=$1

if grep -q "^$rno:" student_data.txt
then
        grep_result=$(grep "^$rno:" student_data.txt)
        read -p "Enter new name : " name
        read -p "Enter subject 1 : " marks1
        read -p "Enter subject 2 : " marks2
        read -p "Enter subject 3 : " marks3
        sed -i "s/^$grep_result/$rno:$name:$marks1:$marks2:$marks3/g" student_data.txt
else
        echo "Roll number not found"
fi