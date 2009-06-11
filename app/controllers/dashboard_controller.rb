class DashboardController < ApplicationController
  def index
	@activities = Activity.all
    
    @bookings = Booking.find(:all, :order => :start)
    @unpaid_users = User.find(:all, :conditions => "fee_payed != 't' AND is_admin != 't' AND is_pr_admin != 't' AND is_coach != 't'" )
    
  end

end
