class DashboardController < ApplicationController

def index
  @bookings = Booking.where(user: current_user)
  @bookings_provided = Booking.joins(:toy).where(toys: {user: current_user})
end

end

# .find — only returns ONE instance
