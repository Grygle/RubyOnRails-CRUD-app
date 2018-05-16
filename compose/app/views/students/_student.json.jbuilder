json.extract! student, :id, :imie, :nazwisko, :pesel, :klasa, :created_at, :updated_at
json.url student_url(student, format: :json)
