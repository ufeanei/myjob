module ApplicationHelper
  def display_datetime(dt)
    dt.strftime("%m/%d/%Y  at %H:%M%P")
  end

  def jobs_per_fylke(jobs, id)
   jobs.select {|x| x.fylke_id== id}.size
  end

  def full_name(user)
  	user.first_name + ' ' + user.last_name
  end

  def time_in_words_norwegian(time)
  	(time_ago_in_words(time)+ ' siden')
  	.gsub('about', '')
  	.gsub('hours', 'timer')
  	.gsub('months', 'måneder')
  	.gsub('days', 'dager')
  	.gsub('hour', 'time')
  	.gsub('month', 'måned')
  	.gsub('minutes', 'minutter')
  	.gsub('less than a', '')
  	.gsub('minute', 'minutt')
    .gsub('day', 'dag')
  end
end
