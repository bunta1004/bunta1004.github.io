class CreateSmemos < ActiveRecord::Migration[5.0]
  def change
    create_table :smemos do |t|
      t.text :name
      t.text :title
      t.text :memo

      t.timestamps
    end
  end
end
