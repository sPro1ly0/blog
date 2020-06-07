class ArticlesController < ApplicationController
    def new
    end

    def create
        render plain: params[:article].inspect # <ActionController::Parameters {"title"=>"My First Post", "text"=>"Aruba, ..."} permitted: false>
        # key is :plain and value is params[:article].inspect
        # params method is the object of the field params from the form
        # The params method returns an ActionController::Parameters object,
        # which allows you to access the keys of the hash using either strings or symbols.
    end
end
