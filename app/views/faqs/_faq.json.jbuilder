json.extract! faq, :id, :title, :content, :category_id, :created_at, :updated_at
json.url faq_url(faq, format: :json)