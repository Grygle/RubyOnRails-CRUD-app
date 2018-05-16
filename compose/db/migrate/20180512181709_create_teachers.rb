class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :imie
      t.string :nazwisko
      t.string :pesel
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
