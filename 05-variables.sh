#! /bin/bash

echo : "enter your user name"

read  username

echo : "enter your password"

read  password

echo : "this is my $username, and $password "


read -s username #if we give -s what we are tying its secure data or not visible or not displaying

echo : "enter your password"

read -s password

echo : "this is my $username, and $password "


