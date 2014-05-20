class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :event_date
      t.float :fees

      t.timestamps
    end
  end
end
