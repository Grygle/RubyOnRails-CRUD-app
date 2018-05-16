class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :nazwa
      t.string :opis

      t.timestamps
    end
  end
end
