class AttendancesController < ApplicationController

    before_action :authenticate_user!

    def create
        @event = Event.find(params[:event_id])
        current_user.attendances.create(attended_event: @event)
        redirect_to @event
    end

    def destroy
        @attendance = current_user.attendances.find_by(attended_event_id: params[:id])
        @attendance.destroy if @attendance
        redirect_to root_path
        
    end

end
