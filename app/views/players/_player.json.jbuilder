json.extract! player, :id, :maker_url, :profile_page, :rating, :created_at, :updated_at
json.url player_url(player, format: :json)