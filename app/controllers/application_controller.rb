class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token # don't try this anywhere except at home
end
