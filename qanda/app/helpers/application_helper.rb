module ApplicationHelper
  def transform_alert_key(key)
    case key
    when 'alert'
      'danger'
    when 'notice'
      'success'
    else
      'info'
    end
  end
end
