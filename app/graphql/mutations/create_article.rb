module Mutations
  class CreateArticle < BaseMutation
    description 'Create an article'

    field :article, Types::ArticleType, null: false

    argument :title, String, required: true
    argument :body, String, required: true

    def resolve(title:, body:)
      { article: Article.create!(title: title, body: body) }
    end
  end
end
