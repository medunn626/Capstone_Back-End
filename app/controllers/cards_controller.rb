# frozen_string_literal: true

class CardsController < OpenReadController
  before_action :set_card_private, only: %i[update destroy]
  before_action :set_card_public, only: %i[show]

  # GET /cards
  def index
    @cards = current_user.cards
    render json: @cards
  end
  # def index
  #   @cards = Card.all
  #   render json: @cards
  # end

  # GET /cards/1
  def show
    render json: @card
  end

  # POST /cards
  def create
    @card = current_user.cards.build(card_params)
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
    # def set_card
    #   @card = current_user.cards.find(params[:id])
    # end
    def set_card_public
      @card = Card.find(params[:id])
    end

    def set_card_private
      @card = current_user.cards.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:name, :photo_url, :type_of_card, :phone_number, :email, :elevator_pitch)
    end
end
