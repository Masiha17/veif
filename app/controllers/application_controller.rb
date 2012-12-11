class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery 
  private

   def load_blog
     @current_blog = Blog.find_by_subdomain(current_subdomain)
     if @current_blog.nil?
       flash[:error] = "Blog invalid"
       redirect_to root_url
     else
       self.class.layout(@current_blog.layout_name || 'application')
     end
   end
end
