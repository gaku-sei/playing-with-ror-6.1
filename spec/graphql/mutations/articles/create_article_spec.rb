require 'rails_helper'

module Mutations
  module Articles
    RSpec.describe CreateArticle, type: :request do
      describe '.resolve' do
        it 'creates an article' do
          article = build :article

          post '/graphql', params: { query: query(title: article.title, body: article.body) }

          JSON.parse(response.body, symbolize_names: true) => { data: { createArticle: { article: { title: title,
                                                body: body } } } }

          expect(article.as_json).to include('title' => title, 'body' => body)
        end
      end

      def query(title:, body:)
        <<~GRAPHQL
          mutation CreateArticle {
            createArticle(
              input: {title: "#{title}", body: "#{body}"}
            ) {
              article {
                id
                title
                body
              }
            }
          }
        GRAPHQL
      end
    end
  end
end
