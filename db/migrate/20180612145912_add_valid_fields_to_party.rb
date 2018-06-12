class AddValidFieldsToParty < ActiveRecord::Migration[5.2]
  def change
    add_column :party_names, :validForBegin, :date
    add_column :party_names, :validForEnd, :date
  end
end
