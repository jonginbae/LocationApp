class UserMailer < ApplicationMailer

default from: "beset0610@naver.com"

def confirm(user)
  @student = student #@user will be whatever user we pass in to the 'welcome' method
  mail( :to => @student.parent1_email, :subject => "Please confirm #{@student.first_name}'s activity'", :cc => @student.parent2_email )
end

end
