class EventAttendingsController < ApplicationController

    def new
        @event_attending = EventAttending.new

    end

    def create
        @event_attending = EventAttending.new
        @event_attending.attendee_id = session[:user_id]
        @event_attending.attended_event_id = params[:id]

    
        # @event = Event.find(params[:attended_event_id])
    
        # @event_attending.creator = User.find(session[:user_id])
    
        respond_to do |format|
          if @event_attending.save
            format.html { redirect_to Event.find(params[:id]), notice: 'Event was successfully created.' }
            format.json { render :show, status: :created, location: @event }
          else
            format.html { render :new }
            format.json { render json: @event_attending.errors, status: :unprocessable_entity }
          end
        end
      end



      private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:attended_event_id])
    end

    # Only allow a list of trusted parameters through.
    def event_attending_params
      params.require(:event_attending).permit(:attended_event_id)
    end
end

