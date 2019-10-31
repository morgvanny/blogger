class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :id
  belongs_to :user
end
