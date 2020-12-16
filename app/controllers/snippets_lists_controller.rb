class SnippetsListsController < ApplicationController
  before_action :set_snippets_list, only: [:show, :edit, :update, :destroy]

  # GET /snippets_lists
  # GET /snippets_lists.json
  def index
    @snippets_lists = SnippetsList.all
  end

  # GET /snippets_lists/1
  # GET /snippets_lists/1.json
  def show
  end

  # GET /snippets_lists/new
  def new
    @snippets_list = SnippetsList.new
  end

  # GET /snippets_lists/1/edit
  def edit
  end

  # POST /snippets_lists
  # POST /snippets_lists.json
  def create
    @snippets_list = SnippetsList.new(snippets_list_params)

    respond_to do |format|
      if @snippets_list.save
        format.html { redirect_to @snippets_list, notice: 'Snippets list was successfully created.' }
        format.json { render :show, status: :created, location: @snippets_list }
      else
        format.html { render :new }
        format.json { render json: @snippets_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snippets_lists/1
  # PATCH/PUT /snippets_lists/1.json
  def update
    respond_to do |format|
      if @snippets_list.update(snippets_list_params)
        format.html { redirect_to @snippets_list, notice: 'Snippets list was successfully updated.' }
        format.json { render :show, status: :ok, location: @snippets_list }
      else
        format.html { render :edit }
        format.json { render json: @snippets_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snippets_lists/1
  # DELETE /snippets_lists/1.json
  def destroy
    @snippets_list.destroy
    respond_to do |format|
      format.html { redirect_to snippets_lists_url, notice: 'Snippets list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snippets_list
      @snippets_list = SnippetsList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snippets_list_params
      params.require(:snippets_list).permit(:is_public, :tags)
    end
end
