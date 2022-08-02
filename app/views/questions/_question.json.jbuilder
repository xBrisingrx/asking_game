json.extract! question, :id, :question, :score, :category_id, :created_at, :updated_at
json.url question_url(question, format: :json)
