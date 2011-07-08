# Encoding: utf-8

class Wine < ActiveRecord::Base
  belongs_to :wine_type
  
  # validates_presence_of :name
  validates :name, :presence => true

  # validates_numericality_of :vintage, :greater_than => 1900
  validates :vintage, :numericality => { :greater_than => 1900 }

  # validates_numericality_of :quantity, :greater_than => 0
  validates :vintage, :numericality => { :greater_than => 0 }

  # validates_inclusion_of :rating, :in => 0..100, :if => :rating
  validates :rating, :inclusion => 0..100, :if => :rating

  # validates_uniqueness_of :code_saq
  validates :code_saq, :uniqueness => true
  
  def drink_in_year
    vintage + years_to_maturity unless vintage.nil? || years_to_maturity.nil?
  end  
end
