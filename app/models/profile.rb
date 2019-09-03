class Profile < ApplicationRecord
  belongs_to :user # optional: true

  def coef_multiplicateur_duration
    case walking_duration
    when 10
      return 1.3
    when 15
      return 1.5
    else
      return 1.7
    end
  end
end
