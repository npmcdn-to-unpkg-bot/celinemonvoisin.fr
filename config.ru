# This file is used by Rack-based servers to start the application.
#ENV["GEM_HOME"]=%x{"source /home/gillesv/.bash_profile ; rvm gillesv@vps22443 ; rvm gemdir"}.strip
require ::File.expand_path('../config/environment',  __FILE__)
run Cmonvoinsin::Application
