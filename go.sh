#! /bin/bash

# update arguments with your name or email that git would recognize
# and enter a date range
# ruby git_calendar.rb <your name> <your projects folder path> <start date> <end date> > out.csv
ruby git_calendar.rb Brian '/Users/brian/projects' 'Jan 10' 'Today' > out.csv
ruby csv_to_json.rb out.csv > httpdocs/js/out.json
