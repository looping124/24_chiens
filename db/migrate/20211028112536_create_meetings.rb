class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :date
      t.belongs_to :stroll, index: true
      t.belongs_to :dog, index: true
      t.timestamps
    end
  end
end
