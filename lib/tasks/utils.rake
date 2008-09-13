namespace :utils do
  desc "Start the nginx web server"
  task :webstart do
    sh "sudo nginx"
  end

  desc "Stop the nginx web server"
  task :webstop do
    sh "sudo kill -QUIT `cat /etc/nginx/nginx.pid`"
  end

  desc "Reload the nginx config file"
  task :webreload do
    sh "sudo kill -HUP `cat /etc/nginx/nginx.pid`"
  end

  desc "Start the mongrel cluster"
  task :cstart do
    sh "sudo mongrel_rails cluster::start"
  end

  desc "Stop the mongrel cluster"
  task :cstop do
    sh "sudo mongrel_rails cluster::stop"
  end

  desc "Check the status of the mongrel cluster"
  task :cstatus do
    sh "sudo mongrel_rails cluster::status"
  end
end
