class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|

      t.timestamps
    end
  end
end
