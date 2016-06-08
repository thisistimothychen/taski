class Project < ActiveRecord::Base
  has_many :tasks

  after_initialize :set_defaults    #can't use after_create

  validates_presence_of :title, :description

  scope :almost_completed, -> { where('percent_complete >= 75.0') }
  scope :still_needs_some_work, -> { where('percent_complete < 75.0') }

  def set_defaults
    self.percent_complete ||= 0.0
  end
end
