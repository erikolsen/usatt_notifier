class RatingFinder
  RATING_IDENTIFIER = '.huge-number'

  def initialize(profile_page_url)
    @url = profile_page_url
  end

  def rating
    profile_page.at(RATING_IDENTIFIER).text.strip
  end

  def profile_page
    mechanize.get @url
  end

  def mechanize
    @mechanize ||= Mechanize.new
  end
end

