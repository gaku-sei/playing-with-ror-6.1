require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'creates an article' do
    article = Article.create title: 'Foo', body: 'foo bar'

    expect(article.valid?).to be true
    expect(article).to be_a Article
  end

  it 'list all articles' do
    Article.create title: 'Foo', body: 'foo bar'
    Article.create title: 'Bar', body: 'bar foo'

    expect(Article.all.size).to be 2
  end
end
