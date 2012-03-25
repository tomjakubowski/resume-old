task :default => [:pdf]

namespace :styles do
  task :build do
    sh "sass resume.sass resume.css"
  end

  task :watch do
    sh "sass --watch resume.sass:resume.css"
  end
end

task :pdf do
  sh 'bundle exec wkpdf -n -p letter --source index.html --output "Tom Jakubowski - Resume.pdf" -m 36'
  sh 'open "Tom Jakubowski - Resume.pdf"'
end
