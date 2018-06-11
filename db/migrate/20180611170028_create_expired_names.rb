class CreateExpiredNames < ActiveRecord::Migration[5.2]
  def change
    create_table :expired_names do |t|
      t.string :name
      t.references :party, foreign_key: true

      t.timestamps
    end
  end
end
