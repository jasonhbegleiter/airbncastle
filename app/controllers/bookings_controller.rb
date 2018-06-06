class BookingsController < ApplicationController
  before_action :set_booking, only:[:show]
  def index
    @bookings = Booking.all.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
    @castle = Castle.find(params[:castle_id])
  end

  def create
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new(booking_params)
    @booking.price = booking_params["no_of_nights"].to_i * @castle.price_per_night
    @booking.accepted = false
    @booking.start_date = Date.new(booking_params["start_date(1i)"].to_i, booking_params["start_date(2i)"].to_i, booking_params["start_date(3i)"].to_i)


    bookings = Booking.where(castle_id: params[:castle_id])
    new_booking_start = @booking.start_date.to_date
    new_booking_end = @booking.start_date.to_date + @booking.no_of_nights
    @unavailable = available(bookings, new_booking_start, new_booking_end).include?(false)

      @booking.user = current_user
      @booking.castle = @castle
      @booking.completed = false
      @booking.save
      redirect_to booking_path(@booking)
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :no_of_nights, :no_confirmed_guests)
  end

  def available(bookings, new_booking_start, new_booking_end)
    free = bookings.map do |b|
      start_date = b.start_date.to_date
      end_date = b.start_date.to_date + b.no_of_nights
      if new_booking_start >= start_date && new_booking_start <= end_date
        false
      elsif new_booking_end <= end_date && new_booking_end >= start_date
        false
      else
        true
      end
    end
    free
  end


end
