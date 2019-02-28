class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :full_name
      t.string :father_name
      t.string :monther_name
      t.string :sex
      t.date :birthday
      t.date :baptism_date
      t.string :place_of_birth
      t.string :marital_status
      t.string :email
      t.string :schooling
      t.string :profession
      t.string :cpf
      t.string :rg
      t.string :rg_emitter
      t.string :rg_emitter
      t.string :voters_title
      t.string :photo
      t.references :kind, index: true, foreign_key: true

      t.timestamps
    end
  end
end
