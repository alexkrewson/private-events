class Event < ApplicationRecord


    belongs_to :creator, class_name: "User"


    has_many :event_attendings, foreign_key: :attended_event_id

    has_many :attendees, through: :event_attendings


    def past?
        self.date < Time.now
    end

end
