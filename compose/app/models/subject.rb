class Subject < ApplicationRecord
		def self.search(search)
  where("nazwa LIKE ? OR opis LIKE ? ", "%#{search}%", "%#{search}%") 
end
    validates :nazwa, :length => { :in => 3..15, :message => "Długość minimum 3." }, :format => { :with => /\A[a-ząćęłńóśźż]+\z/, :message => "nie może zawierać liczb. Musi zaczynać się wielką literą." }
    validates :opis, :length => { :in => 3..50, :message => "musi mieć długość minimum 3." }
end
