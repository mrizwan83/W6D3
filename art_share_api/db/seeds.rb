# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do 
    User.destroy_all
    user1 = User.create!(username: "mrizwan83")
    user2 = User.create!(username: "rendonf")
    user3 = User.create!(username: "kyle74")
    user4 = User.create!(username: "amin23")
    user5 = User.create!(username: "steve4eva")
    user6 = User.create!(username: "vincent_van_gogh")
    user7 = User.create!(username: "leo_da_vinci")
    user8 = User.create!(username: "salvador_dali")
    user9 = User.create!(username: "CM_coolidge")
    user10 = User.create!(username: "pablo_picasso")


    Artwork.destroy_all
    artwork1 = Artwork.create!(title: "Starry Night", image_url: "https://sep.yimg.com/ty/cdn/madisonartshop/most-famous-paintings-2.jpg?t=1628119938&", artist_id: user6.id)
    artwork2 = Artwork.create!(title: "Mona Lisa", image_url: "https://sep.yimg.com/ty/cdn/madisonartshop/most-famous-paintings-1.jpg?t=1628119938&", artist_id: user7.id )
    artwork3 = Artwork.create!(title: "The Persistance of Memory", image_url: "https://sep.yimg.com/ty/cdn/madisonartshop/most-famous-paintings-5.jpg?t=1628119938&", artist_id: user8.id )
    artwork4 = Artwork.create!(title: "Dogs Playing Poker", image_url: "https://sep.yimg.com/ty/cdn/madisonartshop/most-famous-paintings-20.jpg?t=1628119938&", artist_id: user9.id)
    artwork5 = Artwork.create!(title: "Guernica" , image_url: "https://sep.yimg.com/ty/cdn/madisonartshop/most-famous-paintings-4.jpg?t=1628119938&", artist_id: user10.id )
    artwork6 = Artwork.create!(title: "Scary Night", image_url: "https://images.fineartamerica.com/images-medium-large-5/abstract-art-landscape-seascape-bold-colorful-artwork-serenity-by-madart-megan-duncanson.jpg", artist_id: user1.id)
    artwork7 = Artwork.create!(title: "Great Wave of Kanagawa", image_url: "https://img.theculturetrip.com/1440x807/smart/wp-content/uploads/2012/01/hokusai.jpg", artist_id: user2.id)
    artwork8 = Artwork.create!(title: "Uplifted feelings", image_url: "https://cdn.wallpapersafari.com/56/43/FNt4YL.jpg", artist_id: user3.id)
    artwork9 = Artwork.create!(title: "Building Art", image_url: "https://www.thisiscolossal.com/wp-content/uploads/2022/06/pasquini-1.jpg", artist_id: user4.id)
    artwork10 = Artwork.create!(title: "Upper West Side", image_url: "https://images.saatchiart.com/saatchi/1027787/art/4208876/3278725-HSC00001-7.jpg", artist_id: user5.id)
    

    ArtworkShare.destroy_all
    share1 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user1.id)
    share2 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user2.id)
    share3 = ArtworkShare.create!(artwork_id: artwork10.id, viewer_id: user3.id)
    share4 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user4.id)
    share5 = ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user3.id)
    share6 = ArtworkShare.create!(artwork_id: artwork4.id, viewer_id: user5.id)
    share7 = ArtworkShare.create!(artwork_id: artwork5.id, viewer_id: user2.id)
    share8 = ArtworkShare.create!(artwork_id: artwork6.id, viewer_id: user10.id)
    share9 = ArtworkShare.create!(artwork_id: artwork7.id, viewer_id: user1.id)
    share10 = ArtworkShare.create!(artwork_id: artwork8.id, viewer_id: user2.id)
    share11 = ArtworkShare.create!(artwork_id: artwork9.id, viewer_id: user7.id)
end