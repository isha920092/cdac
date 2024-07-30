#!/bin/bash

sed -i '1, 3 s/|/:/g' Empddata.txt
sed -i 's/|/:/g' Empddata.txt
sed -i 's/account/accounts/g' Empddata.txt
grep -E 'director|d\.g\.m|g\.m.' Empddata.txt > directors.txt
grep -v -E 'director|d\.g\.m|g\.m.' Empddata.txt > non_directors.txt
sed -n '1, 4p' Empddata.txt > Empupdate.txt
sed -i '1 i\TechM Employees' Empddata.txt
grep -v 'g\.m' Empddata.txt
sed G Empddata.txt