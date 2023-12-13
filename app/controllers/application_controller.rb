class ApplicationController < ActionController::Base
    http_basic_authenticate_with :name => "eogj", :password => "1mnf1p" 
end
