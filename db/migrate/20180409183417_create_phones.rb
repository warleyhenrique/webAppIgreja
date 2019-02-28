class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :phone
      t.references :member, index: true, foreign_key: true

      t.timestamps
    end
  end
end
