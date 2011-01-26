#! /usr/bin/ruby

def is_git_repo? d
  File.ftype(d) == "directory" && File.exists?("#{d}/.git")
end

#TODO gets feature isn't working for some reason
author = ARGV[0]
unless author 
  print "Enter Author name: "
  author = gets.to_s
end

start_date = ARGV[1]
unless start_date
  print "Enter a start date: "
  start_date = gets.to_s
end

end_date = ARGV[2]
unless end_date
  print "Enter a end date: "
  end_date = gets.to_s
end

projects_dir = "/home/brian/projects"
Dir.chdir projects_dir

output = ["time,commit,project"]

directory = Dir.new(Dir.pwd)
directory.each do |d|
  if is_git_repo? d
    Dir.chdir "#{projects_dir}/#{d}"
    git_log_output = `git log --branches --author=#{author} --pretty="%at,%s" --after="#{start_date}" --before="#{end_date}"`
    log_list = git_log_output.split("\n")
    output << log_list.map { |line| line << ",#{d}"}
    Dir.chdir projects_dir
  end
end

puts output.each { |ele| puts ele }
