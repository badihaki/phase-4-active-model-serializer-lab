class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile, :posts

  has_many :posts, serializer: AuthorPostsSerializer
  has_one :profile, serializer: ProfileSerializer
end
