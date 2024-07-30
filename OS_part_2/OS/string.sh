#!/bin/bash

myarr=(1 2 hello "hello all")

echo "${myarr[0]}"
echo "${myarr[*]}"
echo "${#myarr[*]}"
echo "${myarr[*]:1}"
echo "${myarr[*]:1:2}"

myarr+=(5 isha)
echo "${myarr[*]}"
