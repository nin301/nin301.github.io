json.array!(@posts) do |post|
  json.extract! post, :id, :name, :about, :video, :image, :order_link, :weight, :category
  json.url post_url(post, format: :json)
end
