class LinksListSerializer < ActiveModel::Serializer
  attributes :id, :linkedin, :facebook, :instagram, :twitter, :other, :card_id
end
