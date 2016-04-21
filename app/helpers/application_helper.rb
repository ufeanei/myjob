module ApplicationHelper
  def display_datetime(dt)
    dt.strftime("%m/%d/%Y  at %H:%M%P")
  end

  def jobs_per_fylke(jobs, id)
   jobs.select {|x| x.fylke_id== id}.size
  end
end
