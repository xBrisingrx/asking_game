module ApplicationHelper
  include Pagy::Frontend
  def flash_class(level)
    case level.to_sym
    when :notice
      'alert-success'
    when :success
      'alert-primary'
    when :alert
      'alert-danger'
    when :error
      'alert-danger'
    else
      'alert-info'
    end
  end
end
