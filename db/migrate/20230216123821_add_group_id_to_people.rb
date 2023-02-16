class AddGroupIdToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :group, foreign_key: true
  end
end
