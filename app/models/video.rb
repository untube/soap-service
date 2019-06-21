class Video
  include Mongoid::Document
  field :user_id, type: Integer
  field :category_id, type: String
  field :title, type: String
  field :description, type: String
  field :fieldname, type: String
  field :originalname, type: String
  field :filename, type: String
  field :image, type: String
end
