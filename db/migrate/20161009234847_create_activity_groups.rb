class CreateActivityGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_groups do |t|
      t.integer :activity_id
      t.integer :student_id
      t.string :confirm, :default => "N"

      t.timestamps
    end
  end
end
