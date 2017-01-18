class RatingNotifier
  def initialize(maker_url)
    @key = maker_url.split('/').last
    @post_url = 'https://maker.ifttt.com/trigger/rating_change/with/key/' + @key
  end

  def notify!(ratings_hash)
    RestClient.post @post_url, ratings_hash.to_json, {content_type: :json, accept: :json }
  end
end
