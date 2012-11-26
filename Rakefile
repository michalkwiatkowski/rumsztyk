namespace :wsdl do
  desc "Generates WSDL from URL"
  task :generate do
    Dir.chdir("stubs")
    sh "wsdl2ruby.rb --wsdl https://webapi.allegro.pl/uploader.php?wsdl --type client"
    Dir.chdir("..")
  end
end