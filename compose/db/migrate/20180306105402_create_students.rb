class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :imie
      t.string :nazwisko
      t.string :pesel
      t.string :klasa

      t.timestamps
    end
  end
end
