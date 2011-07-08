class Wine < ActiveRecord::Base
  belongs_to :wine_type
  
  def drink_in_year
    vintage + years_to_maturity unless vintage.nil? || years_to_maturity.nil?
  end  
end
