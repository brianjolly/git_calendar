#! /bin/bash

author=$1
start_date=$2
end_date=$3

output=""
for project_dir in ~/projects/* 
do
  echo "----------------"
  path=$project_dir/.git
  if cd $path
  then
    echo `git log --branches --author=$author --pretty="%at,%s" --after="Aug 10" --before="Aug 19"`,$project_dir >> ~/cal_output.csv
  fi
done
