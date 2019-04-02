#!/bin/sh
 
repos=`cat $3`
user=$1
password_or_oauth_token=$2
 
for repo in $repos
 do
	curl -v -u "$user:$password_or_oauth_token" -X DELETE \
       "https://api.github.com/repos/$user/$repo"
done
