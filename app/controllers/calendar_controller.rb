class CalendarController < ApplicationController
  def index
	@activities = Activity.all
    
    if params[:year] != nil

      @year = params[:year].to_i

    else

      @year = Time.now.year

    end

    @next_year = @year
    @prev_year = @year
    
    if params[:month] != nil

      @month = params[:month].to_i
      if @month == 1
        @prev_month = 12
        @prev_year = @year - 1
      else
        @prev_month = @month - 1
      end

      if @month == 12
        @next_month = 1
        @next_year = @year + 1
      else
        @next_month = @month + 1
      end

    else
      
      @next_month = Time.now.month + 1
      @prev_month = Time.now.month - 1
      @month = Time.now.month
    
    end

  end
end
