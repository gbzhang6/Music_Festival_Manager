class AnalyticsController < ApplicationController
  before_action :most_popular_artist, :user_with_most_bookings, :gender_distribution, :user_avg_age, :stage_with_most_perf, :time_with_most_perf

  def index
  end

  private
  def most_popular_artist
    @most_popular_artist = Artist.all.sort_by {|artist| artist.bookings.count}.reverse.first
  end

  def user_with_most_bookings
    @user_with_most_bookings = User.all.sort_by {|user| user.bookings.count}.reverse.first
  end

  def gender_distribution
    all_count = User.all.count
    male_count = User.where(gender: "Male").count
    female_count = User.where(gender: "Female").count

    @male_percentage = (male_count.to_f / all_count * 100).round(4)
    @female_count = (female_count.to_f / all_count * 100).round(4)
  end

  def user_avg_age
    users_ages = User.all.map {|user| user.age}
    @users_avg_age =  users_ages.reduce(:+) / User.all.count
  end

  def stage_with_most_perf
    @stage_with_most_perf = Stage.all.sort_by {|stage| stage.performances.count}.reverse.first
  end

  def time_with_most_perf
    # hash = Hash.new(0)
    #
    # Performance.all.each do |performance|
    #   hash[performance.id] += 1
    # end
    #
    # most_booked_perf = hash.sort_by {|key, value| value}.reverse.first
    # @time_with_most_perf = Performance.find(most_booked_perf.keys.first)
  end
end
