class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :teacher_id
      t.string :activity_name
      t.string :place
      t.datetime :date_from
      t.datetime :date_to

      t.timestamps
    end
  end
end
