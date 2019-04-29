module ApplicationHelper

  def datetime_sentence(datetime)
    return datetime.strftime("%B %d, %Y at %I:%M %p ")
  end
end
