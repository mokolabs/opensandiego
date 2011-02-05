class CallsController < ApplicationController

  def index
    # Grab day
    unless params[:day].blank?
      @selected_day = params[:day]
      @day = params[:day]
    # Default
    else
      @selected_day = "1"
      @day = "1"
    end
    
    # Pad day if necesary
    if @selected_day.length == 1
      @selected_day = "0" + @selected_day
    end
    
    # Find calls for given day
    @calls = Call.paginate :conditions => "ali_query_timestamp LIKE '07 #{@selected_day}%' AND ali_latitude != '' AND ali_longitude != ''",
                           :page => params[:page]
                           
    # Grab response times of calls
    @response_times = @calls.map(&:duration_secs).sort
    
    @max = @calls.last.duration_secs
  end

  def show
    @call = Call.find(params[:id])
  end

end
