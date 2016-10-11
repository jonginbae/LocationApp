class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :user_id
      t.string :email
      t.text :password_digest
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :position

      t.timestamps
    end
  end
end
