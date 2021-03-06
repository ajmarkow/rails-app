class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :only => [:main]

  # GET /snippets
  # GET /snippets.json
  def index
    @tags= Tag.where("snippet_id =?",params[:id].to_i)

    @snippets = Snippet.it_aint_private
  end

  # GET /snippets/1
  # GET /snippets/1.json
  def show
    @snippet=Snippet.find_by_id(params[:id])
    @tags= Tag.where("snippet_id = :query",query:params[:id])
  end

  # GET /snippets/new
  def new
    @snippet = Snippet.new
    @tag = Tag.new
    @tag.snipppet = params[:user_id]
    @tag.tag_id = params[:tag_id]
    @tag.save
  end

  def main
    @snippet = Snippet.find_by_user_id(params[:user_id])
  end

  # GET /snippets/1/edit
  def edit
  end

  # POST /snippets
  # POST /snippets.json
  def create
    @snippet = Snippet.new(snippet_params)

    respond_to do |format|
      if @snippet.save
        format.html { redirect_to @snippet, notice: 'Snippet was successfully created.' }
        format.json { render :show, status: :created, location: @snippet }
        puts @snippet
      else
        format.html { render :new }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snippets/1
  # PATCH/PUT /snippets/1.json
  def update
    respond_to do |format|
      if @snippet.update(snippet_params)
        format.html { redirect_to @snippet, notice: 'Snippet was successfully updated.' }
        format.json { render :show, status: :ok, location: @snippet }
      else
        format.html { render :edit }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snippets/1
  # DELETE /snippets/1.json
  def destroy
    @snippet.destroy
    respond_to do |format|
      format.html { redirect_to snippets_url, notice: 'Snippet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snippet
      @snippet = Snippet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snippet_params
      params.require(:snippet).permit(:trigger, :replacement, :is_form, :is_public, :tag_id)
    end

    def json_response (object, status = :ok)
      render json: object, status: status
    end
end
