xml.instruct!

xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
  xml.url do
    xml.loc root_url
    xml.changefreq("hourly")
    xml.priority "1.0"
  end
  xml.url do
    xml.loc jobs_url
    xml.changefreq("hourly")
    xml.priority "1.0"
  end
  @jobs.each do |job|  
    xml.url do
      xml.loc job_url(job)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod job.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
end
