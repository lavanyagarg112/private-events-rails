class AddNewColumnsToAttendances < ActiveRecord::Migration[7.1]
  def change
    add_reference :attendances, :attendee, null: false, foreign_key: { to_table: :users }
    add_reference :attendances, :attended_event, null: false, foreign_key: { to_table: :events }
  end
end
