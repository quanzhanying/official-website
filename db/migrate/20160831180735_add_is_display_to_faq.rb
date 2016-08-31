class AddIsDisplayToFaq < ActiveRecord::Migration[5.0]
  def change
    add_column :faqs, :is_display, :boolean, default: false
  end
end
