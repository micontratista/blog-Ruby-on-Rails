class ArticlesController < ApplicationController
def new
  @article = Article.new(params[:article])

  @article.save
  redirect_to @article

end

def create
render plain: params[:article].inspect
end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
