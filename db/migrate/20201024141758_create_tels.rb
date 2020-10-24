class CreateTels < ActiveRecord::Migration[5.2]
  def change
    create_table :tels do |t|
      t.integer :number, null: false
      t.string :full_name, null: false
      t.text :tel_num
      
      t.timestamps
    end
  end
end
