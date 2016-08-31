class AddFilepickerUrlToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :filepicker_url, :string
  end
end
