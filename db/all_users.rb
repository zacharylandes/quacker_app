require_relative "..app/controllers/concerns/users_controller.rb"

#Pseudocode:
#Create a loop that creates HTML including each user on the page.

def index
  @users = User.all
  @user_name = []
end

@users.each do
  |user| @user_name << "<li><b><%= link_to '#{user}', #{user}_path %></b></li>"
end

# <%= link_to "To registration page", inquiries_path %>
# jared5094
