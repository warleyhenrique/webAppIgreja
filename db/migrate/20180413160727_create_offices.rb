class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.belongs_to :role, index: true
      t.belongs_to :departament, index: true
      t.references :member, index: true, foreign_key: true

      t.timestamps
    end
  end
end
