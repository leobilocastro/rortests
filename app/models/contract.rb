class Contract < ApplicationRecord
  serialize :recurring, Hash
  
  belongs_to :user, optional: true
  belongs_to :payment, optional: true
  belongs_to :service, inverse_of: :contracts


  def recurring=(value)
    if RecurringSelect.is_valid_rule?(value)
      super(RecurringSelect.dirty_hash_to_rule(value).to_hash)
    else
      super(nil)
    end
  end


  def rule
    IceCube::Rule.from_hash recurring
  end

  def schedule(start)
    schedule = IceCube::Schedule.new(start)
    schedule.add_recurrence_rule(rule)
    schedule
  end


  def calendar_contracts(start)
        if recurring.empty?
        [self]
        else
            start_date  = start.beginning_of_month.beginning_of_week 
            end_date = start.end_of_month.end_of_week
            
            schedule(start_date).occurrences(end_date).map  do  |date|
                    Contract.new(id: id, observations: observations, service: service,start_time: date)
            end
        end
    end

end
