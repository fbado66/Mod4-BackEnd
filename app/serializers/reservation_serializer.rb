class ReservationSerializer < ActiveModel::Serializer
  attributes :check_in_date, :check_out_date, :guest_count, :message_to_host
  belongs_to :listing
end
