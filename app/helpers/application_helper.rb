module ApplicationHelper
  def display_datetime(dt)
    dt.strftime("%d/%m/%Y  at %H:%M%P")
  end

  def jobs_per_fylke(all_jobs, jobs_by_cat, id)
    if jobs_by_cat
      jobs_by_cat.select {|x| x.fylke_id == id}.size
    elsif all_jobs  
      all_jobs.select {|x| x.fylke_id == id}.size
    end
  end

  def jobs_per_category(all_jobs, jobs_by_fylke, category_id)
    if jobs_by_fylke
      jobs_by_fylke.select {|x| x.category_id == category_id}.size
    elsif all_jobs
      all_jobs.select {|x| x.category_id == category_id}.size
    end
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
  	.gsub('less than a', 'mindre enn 1')
  	.gsub('minute', 'minutt')
    .gsub('day', 'dag')
  end
end
