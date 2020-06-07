class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        # instance variable hold a reference to the article object
        @article = Article.find(params[:id])
    end

    def new
    end

    def create
        # initialize model with its attributes, params[:article]
        
        @article = Article.new(article_params)

        # saving the model in the database, returns boolean if saved or not
        @article.save 
        # redirect user to show action
        redirect_to @article
    end

    # make sure it can't be called outside its intended context
    # can be used by create and update
    # require and permit help prevent malicious use and wrong mass assignment
    private
        def article_params
            params.require(:article).permit(:title, :text)
        end

end

#render plain: params[:article].inspect # <ActionController::Parameters {"title"=>"My First Post", "text"=>"Aruba, ..."} permitted: false>
# key is :plain and value is params[:article].inspect
# params method is the object of the field params from the form
# The params method returns an ActionController::Parameters object,
# which allows you to access the keys of the hash using either strings or symbols.