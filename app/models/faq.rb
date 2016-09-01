class Faq < ApplicationRecord
  belongs_to :category
  acts_as_list scope: :category

  def publish!
    update_column(:is_hidden, false)
  end

  def draft!
    update_column(:is_hidden, true)
  end
end

# == Schema Information
#
# Table name: faqs
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  position    :integer
#  is_hidden   :boolean          default(TRUE)
#  is_display  :boolean          default(FALSE)
#
