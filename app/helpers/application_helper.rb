module ApplicationHelper
  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def is_cleaner?
    current_user.is_a?(Cleaner)
    # current_user.class == "Cleaner"
  end

  def is_pending?
    @booking.cleaner_status == nil
  end

end
