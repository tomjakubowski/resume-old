require 'yaml'
require 'aws/s3'
require 'uri'

@pdf_name = "Tom Jakubowski - Resume.pdf"

task :default => [:pdf]

def make_pdf
  sh "bundle exec wkpdf -n -p letter --source index.html --output \"#{@pdf_name}\" -m 36"
  sh "open \"#{@pdf_name}\""
end

namespace :styles do
  task :build do
    sh "sass resume.sass resume.css"
  end

  task :watch do
    sh "sass --watch resume.sass:resume.css"
  end
end

task :pdf do
  make_pdf
end

task :s3 do
  config = YAML.load_file("amazon.yml")
  key = config["access_key_id"]
  secret = config["secret_access_key"]
  bucket_name = config["bucket"]

  AWS::S3::Base.establish_connection!(
    :access_key_id => key,
    :secret_access_key => secret
  )

  AWS::S3::S3Object.store(@pdf_name, open(@pdf_name), bucket_name,
                          :access => :public_read)

  puts "Stored to S3, accessible at " +
          URI.encode("http://s3.amazonaws.com/#{bucket_name}/#{@pdf_name}")
end
