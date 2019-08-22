module TimeHelper
  def minute_to_hours(minutes)
    hours = minutes / 60
    rest = minutes % 60
    "#{hours}h#{rest}"
  end
end
