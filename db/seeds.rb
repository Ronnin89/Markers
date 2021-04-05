# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.destroy_all
Category.destroy_all
Bookmark.destroy_all

Type.create(
    [
        { name: "Anime" },
        { name: "Manga" }
    ]
)
Category.create(
    [
        { name: "Shonen", private: false },
        { name: "Isekai", private: false }
    ]
)
Category.create(
    [
        { name: "Escolar", private: false, category_id: Category.find_by(name: "Shonen").id },
        { name: "Magia", private: false, category_id: Category.find_by(name: "Isekai").id }
    ]
)
Bookmark.create(
    [
        { name: "One piece", url:"https://www3.animeflv.net/anime/one-piece-tv", type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Boku no Hero Academia", url: "https://www3.animeflv.net/anime/boku-no-hero-academia-2016", type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Escolar").id },
        { name: "One piece", url:"https://www3.animeflv.net/anime/one-piece-tv", type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Konosuba", url: "https://www3.animeflv.net/anime/kono-subarashii-sekai-ni-shukufuku-wo",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Isekai").id },
        { name: "Solo leveling", url: "https://lectortmo.com/library/manhwa/41512/solo-leveling",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Spy x Family", url: "https://lectortmo.com/library/manga/43882/spy-x-family",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Escolar").id },
        { name: "Owari no Seraph", url: "https://lectortmo.com/library/manga/8190/Owari-no-Seraph",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Jujutsu Kaisen", url: "https://www3.animeflv.net/anime/jujutsu-kaisen-tv",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Jujutsu Kaisen", url: "https://lectortmo.com/library/manga/36989/jujutsu-kaisen",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Junk the Black Shadow", url: "https://lectortmo.com/library/manga/37907/Junk-the-Black-Shadow",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Magia").id },
        { name: "Log Horizon", url: "https://www3.animeflv.net/anime/log-horizon",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Isekai").id },
        { name: "Vinland Saga", url: "https://www3.animeflv.net/anime/vinland-saga",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Fate Stay Night", url: "https://www3.animeflv.net/anime/fate-stay-night",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Magia").id },
        { name: "The Irregular at Magic High School", url: "https://www3.animeflv.net/anime/mahouka-koukou-no-rettousei",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Escolar").id },
        { name: "Hunter X Hunter", url: "https://lectortmo.com/library/manga/212/hunter-x-hunter",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Gantz", url: "https://lectortmo.com/library/manga/8804/gantz",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "I am a Hero", url: "https://lectortmo.com/library/manga/6102/i-am-a-hero",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Isekai").id },
        { name: "Neo Genesis Evangelion", url: "https://www3.animeflv.net/anime/neon-genesis-evangelion",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Shonen").id },
        { name: "Slam Dunk", url: "https://lectortmo.com/library/manga/11580/slam-dunk",type_id: Type.find_by(name: "Manga").id, category_id: Category.find_by(name: "Escolar").id },
        { name: "Higurashi no Naku Koro Ni", url: "https://www3.animeflv.net/anime/higurashi-no-naku-koro-ni",type_id: Type.find_by(name: "Anime").id, category_id: Category.find_by(name: "Escolar").id }

    ]
)