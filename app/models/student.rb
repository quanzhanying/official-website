class Student < ApplicationRecord
  validates :filepicker_url, presence: true
end

# == Schema Information
#
# Table name: students
#
#  id             :integer          not null, primary key
#  job            :string
#  location       :string
#  name           :string
#  phone          :string
#  email          :string
#  wechat_account :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  filepicker_url :string
#
