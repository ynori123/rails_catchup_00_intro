class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.string :name
      t.text :body
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
