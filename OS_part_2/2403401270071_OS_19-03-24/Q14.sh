#!/bin/bash

#Question 14

#From the above database substitute the delimiter of first 3 lines with :
sed -i '1, 3 s/|/:/g' EmpData.txt

#From the above database substitute the delimiter with :
sed -i 's/|/:/g' EmpData.txt

#Insert the string “ TechM Employees” in the first line.
sed -i '1 i\TechM Employees' EmpData.txt

#Store the lines pertaining to the directors, d.g.m and g.m into three separate files.
grep -E 'director' EmpData.txt > directors.txt
grep -E 'd\.g\.m' EmpData.txt > d_g_m.txt
grep -E 'g\.m.' EmpData.txt > g_m.txt

#Using address store first 4 lines into a file Empupdate.
sed -n '1, 4p' EmpData.txt > Empupdate.txt

#Find the pattern “account” in the database and replaces that with “accounts”.
sed -i 's/account/accounts/g' EmpData.txt

#Select those lines which do not have a pattern “g.m”.
sed -n '/g\.m/!p' EmpData.txt

#Insert a blank line after every line in the database.
sed G EmpData.txt
