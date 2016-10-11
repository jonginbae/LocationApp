class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :position
      t.string :parent1_first_name
      t.string :parent1_last_name
      t.string :parent1_phone_number
      t.string :parent2_first_name
      t.string :parent2_last_name
      t.string :parent2_phone_name
      t.string :parent1_email
      t.string :parent2_email

      t.timestamps
    end
  end
end
