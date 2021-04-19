module Queries
  class Article < BaseQuery
    description 'Find an article by ID'

    type Types::ArticleType, null: true

    argument :id, ID, required: true

    def resolve(id:)
      ::Article.find(id)
    end
  end
end
