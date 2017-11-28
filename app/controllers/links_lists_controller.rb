# frozen_string_literal: true

class LinksListsController < ProtectedController
  before_action :set_links_list, only: %i[index show update destroy]

  # GET /links_lists
  def index
    @links_lists = current_user.links_lists
    render json: @links_lists
  end

  # GET /links_lists/1
  def show
    render json: @links_list
  end

  # POST /links_lists
  def create
    @links_list = current_user.build_links_list(links_list_params)
    if @links_list.save
      render json: @links_list, status: :created
    else
      render json: @links_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /links_lists/1
  def update
    if @links_list.update(links_list_params)
      render json: @links_list
    else
      render json: @links_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /links_lists/1
  def destroy
    @links_list.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_links_list
      @links_list = current_user.links_list.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def links_list_params
      params.require(:links_list).permit(:linkedin, :facebook, :instagram, :twitter, :other)
    end
end
