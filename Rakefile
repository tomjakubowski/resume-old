task :default => [:pdf]

namespace :styles do
  task :watch do
    sh "sass --watch resume.sass:resume.css"
  end
end

task :pdf do
  sh 'bundle exec wkpdf -p letter --source index.html --output "Tom Jakubowski - Resume.pdf" -m 36'
  sh 'open "Tom Jakubowski - Resume.pdf"'
end