class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo_url, :type, :phone_number, :email, :elevator_pitch, :user_id
end
