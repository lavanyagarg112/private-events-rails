class AttendancesController < ApplicationController

    before_action :authenticate_user!

    def create
        @event = Event.find(params[:event_id])
        current_user.attendances.create(attended_event: @event)
        redirect_to @event
    end

    def destroy

        @attendance = current_user.attendances.find_by(attended_event_id: params[:id])
        
        if @attendance
            @event =  @attendance.attended_event
            @attendance.destroy
            redirect_to @event
        end
        
    end

end
