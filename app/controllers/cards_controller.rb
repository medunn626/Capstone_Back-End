# frozen_string_literal: true

class CardsController < ProtectedController
  before_action :set_card, only: %i[show update destroy]

  # GET /cards
  def index
    @cards = current_user.cards
    render json: @cards
  end

  # GET /cards/1
  def show
    render json: @card
  end

  # POST /cards
  def create
    @card = current_user.build_card(card_params)
    if @card.save
      render json: @card, status: :created
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = current_user.cards.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:name, :photo_url, :type, :phone_number, :email, :elevator_pitch)
    end
end
