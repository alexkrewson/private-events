class User < ApplicationRecord

    has_many :event_attendings, foreign_key: "attendee_id"

    has_many :attended_events, through: :event_attendings

    has_many :created_events, foreign_key: "creator_id", class_name: "User"

    # attr_accessor :username

    # validates_uniqueness_of :username

end
