class CreateTels < ActiveRecord::Migration[5.2]
  def change
    create_table :tels do |t|
      t.string :full_name, null: false
      t.text :tel_num
      t.boolean :cellphone, null: false, default: false
      t.timestamps
    end
  end
end

