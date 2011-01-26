#! /bin/bash

git_calendar_rb Brian 'Jan 10' 'Today' > out.csv
ruby csv_to_json.rb out.csv > out.json
