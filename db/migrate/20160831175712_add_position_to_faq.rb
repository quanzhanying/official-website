class AddPositionToFaq < ActiveRecord::Migration[5.0]
  def change
    add_column :faqs, :position, :integer
    add_column :faqs, :is_hidden, :boolean, default: true
  end
end
