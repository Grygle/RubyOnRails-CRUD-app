class Teacher < ApplicationRecord
  belongs_to :subject
  	def self.search(search)
  where("imie LIKE ? OR nazwisko LIKE ?", "%#{search}%", "%#{search}%") 
end
    validates :imie, :length => { :in => 3..15, :message => "Długość minimum 3." }, :format => { :with => /\A[A-ZĄĆĘŁŃÓŚŹŻ][a-ząćęłńóśźż]+\z/, :message => "nie może zawierać liczb. Musi zaczynać się wielką literą." }
    validates :nazwisko, :length => { :in => 3..20, :message => "musi mieć długość minimum 3." }, :format => { :with => /\A[A-ZĄĆĘŁŃÓŚŹŻ][a-ząćęłńóśźż]+\z/, :message => "nie może zawierać liczb. Musi zaczynać się wielką literą." }
    validates :pesel, :length => { :is => 11, :message => "ma złą długość!" },:format => { :with => /\A[0-9][0-9]((([0][1,3,5,7,8])|([1][0,2]))(([0][1-9])|([1-2][0-9])|([3][0-1])))|((([0][4,6,9])|([1][1]))(([0][1-9])|([1-2][0-9])|([3][0])))|(([02])(([0][1-9])|([1-2][0-9])))[0-9]{5}+\z/, :message => "jest nieprawdziwy."}, :numericality => { :only_integer => true, :message => "Musi składać się z samych cyfr." }

end
