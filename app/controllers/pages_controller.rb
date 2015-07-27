class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:secret]

def new
	
end


end

