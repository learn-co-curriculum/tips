require 'rspec'
require_relative 'recurring_moment'

describe RecurringMoment do
  describe '#match' do
    let(:jan1) { DateTime.parse('Jan 1, 2018') }
    context 'When the period is monthly' do
      let(:period) { 'monthly' }

      it 'correctly matches a one month interval from Jan 1' do
        interval = 1
        recurrence = RecurringMoment.new(period: period, interval: 1, start: jan1)
        expect(recurrence.match(jan1.advance(months: 1))).to eq true
        expect(recurrence.match(jan1.advance(months: 3))).to eq true
        expect(recurrence.match(jan1.advance(months: 6))).to eq true
        expect(recurrence.match(jan1.advance(days: 6))).to eq false
      end
    end
  end
end
