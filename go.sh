#! /bin/bash

# update arguments with your name or email that git would recognize
# and enter a date range

name='Brian'
projects_folder="/Users/brian/projects"
start_date="Jan 20"
end_date="Today"

ruby git_calendar.rb "$name" "$projects_folder" "$start_date" "$end_date" > ruby csv_to_json.rb > httpdocs/js/out.json
