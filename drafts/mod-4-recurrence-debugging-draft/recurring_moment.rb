require 'active_support'
require 'active_support/core_ext'

class RecurringMoment
  def initialize(start:, interval:, period:)
    @start = start
    @interval = interval
    @period = period
  end

  def match(date)
    current = @start
    i = 1

    while current <= date
      if current == date
        return true
      end

      if @period == 'monthly'
        current = @start.advance(months: @interval * i)
      elsif @period == 'weekly'
        current = @start.advance(weeks: @interval * i)
      elsif @period == 'daily'
        current = @start.advance(days: @interval * i)
      end
      i += 1
    end

    return false
  end
end
