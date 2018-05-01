require 'active_support'
require 'active_support/core_ext'

class RecurringMoment
  def initialize(start:, interval:, period:)
    @start = start
    @interval = interval
    @period = period
  end

  def advance_n_periods(date, n)
    if @period == 'monthly'
      date.advance(months: @interval * n)
    elsif @period == 'weekly'
      date.advance(weeks: @interval * n)
    elsif @period == 'daily'
      date.advance(days: @interval * n)
    end
  end

  def match(date)
    current = @start
    i = 1

    while current <= date
      if current == date
        return true
      end

      current = advance_n_periods(@start, i)
      i += 1
    end

    return false
  end

end
