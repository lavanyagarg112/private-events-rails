class RemoveCreatorsForeignKeyFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :events, :creators
  end
end
