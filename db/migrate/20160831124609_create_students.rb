class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :job
      t.string :location
      t.string :name
      t.string :phone
      t.string :email
      t.string :wechat_account
      t.timestamps
    end
  end
end
