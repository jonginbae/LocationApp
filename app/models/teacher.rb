# == Schema Information
#
# Table name: teachers
#
#  id             :integer          not null, primary key
#  user_id        :string
#  email          :string
#  password_diget :text
#  first_name     :string
#  last_name      :string
#  phone_number   :string
#  position       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Teacher < ApplicationRecord
   has_secure_password
   
   has_many :activities
end
