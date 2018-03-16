module ItemsHelper

  def time_left(item)
    from_time = Time.now - item.created_at
    to_time = 7.days
    time_left = distance_of_time_in_words(from_time, to_time )
  end

  def me(item)
    item.user.email == current_user.email
  end

end
