class Student < ApplicationRecord
  validates :job, presence: true
  validates :location, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
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
