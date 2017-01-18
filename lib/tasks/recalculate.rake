namespace :recalculate do
  desc "Recalculate and Notify Players"
  task :all => :environment do
    Player.all.each do |player|
      new_rating = RatingFinder.new(player.profile_page).rating
      RatingNotifier.new(player.maker_url).notify!({'value1' => player.rating, 'value2' => new_rating})
      player.rating = new_rating
      player.save
    end
  end
end
