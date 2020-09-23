module MoviesHelper
  def weekdays
    @weekdays ||= DateAndTime::Calculations::DAYS_INTO_WEEK.keys.map do |weekday|
      weekday.to_s[0...3]
    end
  end

  def month_matrix
    today = Time.zone.today
    first_day = today.beginning_of_month
    end_day = today.end_of_month

    serialize_month = Array.new
    serialize_month[first_day.wday, 0] = (first_day..end_day).to_a

    month_matrix = serialize_month.in_groups_of(7)
  end

  def month
    today.month
  end
  
  def year
    today.year
  end

  def movies_of(date)
    Movie.where(reserved_date: date)
  end

  private

  def today
    Time.zone.today
  end
end
