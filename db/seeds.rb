puts "✨ Removing old data..."
Artist.delete_all
Genre.delete_all
Song.delete_all
Review.delete_all

puts "🌱 Seeding spices..."

puts "🎹 Creating Songs, Artists, Genres, and Reviews..."
a1 = Artist.create(name: "Marvin Gaye")
a2 = Artist.create(name: "Freddie Gibbs")
a3 = Artist.create(name: "Michael Jackson")
a4 = Artist.create(name: "Hall & Oates")
a5 = Artist.create(name: "Pete Rock")
a6 = Artist.create(name: "David Bowie")
a7 = Artist.create(name: "Guns 'N Roses")
a8 = Artist.create(name: "Gorillaz")
a9 = Artist.create(name: "The Jones Girls")
a10 = Artist.create(name: "The Zombies")

g1 = Genre.create(name: "R&B/Soul")
g2 = Genre.create(name: "Hip-Hop")
g3 = Genre.create(name: "Pop")
g4 = Genre.create(name: "Hard Rock")
g5 = Genre.create(name: "Alternative")
g6 = Genre.create(name: "Indie")
g7 = Genre.create(name: "Jazz")

s1 = Song.create(name: 'Distant Lover', year: 1973, artist_id: a1.id, genre_id: g1.id)
s2 = Song.create(name: 'Scottie Beam', year: 2020, artist_id: a2.id, genre_id: g2.id)
s3 = Song.create(name: 'Bille Jean', year: 1982, artist_id: a3.id, genre_id: g3.id)
s4 = Song.create(name: 'Maneater', year: 1982, artist_id: a4.id, genre_id: g3.id)
s5 = Song.create(name: 'Pete\'s Jazz', year: 2001, artist_id: a5.id, genre_id: g2.id)
s6 = Song.create(name: 'Win', year: 1975, artist_id: a6.id, genre_id: g1.id)
s7 = Song.create(name: 'Nighttrain', year: 1987, artist_id: a7.id, genre_id: g4.id)
s8 = Song.create(name: 'Tomorrow Comes Today', year: 2001, artist_id: a8.id, genre_id: g5.id)
s9 = Song.create(name: 'Who Can I Run To', year: 1979, artist_id: a9.id, genre_id: g1.id)
s10 = Song.create(name: 'She\'s Not There', year: 1965, artist_id: a10.id, genre_id: g3.id)

r1 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "Yo I love this song. Greatest song of all time!", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s1.id)
r2 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "It's a good song but it's definitely not the best. Still very catchy.", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s4.id)
r3 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "THE GREATEST SONG EVER !!!!!", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s3.id)
r4 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "Will it stand the test of time? We'll see but for now it's definitely number 1 on my list...", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s10.id)
r5 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 20..40), comment: "I remember when my dad showed me this song, I must've been like 6 years old...", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s1.id)
r6 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "It's not a lot of people's number 1 song but it is mine!!", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s5.id)
r7 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "LOL if this is your favorite song ever, you're crazy", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s3.id)
r8 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "Ehh a very good song, but not a great one. No shot. Not while Thriller exists.", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s3.id)
r9 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "I love it, Idc what anyone else thinks!", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s8.id)
r10 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "His voice has only gotten better with time...this is the GOAT SONG", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s1.id)
r11 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "Their voices are just incredible and the lyrics still resonate...", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s9.id)
r12 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "His flow is insane, I mean who's touching him nowadays??", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s2.id)
r13 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Axl is a lunatic but he killed the vocals here -- whole band was insane! CLASSIC TIMES", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s7.id)
r14 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Bowie's Plastic Soul era is my favorite of all of his -- a slept-on album period IMO", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s6.id)
r15 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "I think Dilla is better but this is just my favorite song ever, no lyrics either", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s5.id)
r16 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "They're not as big as they should be but they're the best ever to me!!!!", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s9.id)
r17 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Everybody loved the Beatles but I liked these guys better", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s10.id)
r18 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "Very overrated rapper, I just don't get it. ", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s2.id)
r19 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "They weren't bad but DEFINITELY NOT THE BEATLES LOL", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s10.id)
r20 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "I doubt most people even know this song but it really speaks to me, IDK why", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s8.id)
r21 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Thank God I heard this from a Kanye sample bc it's now my favorite song ever hahaha", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s1.id)
r22 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "What idiot voted this song up here? IT'S NOT EVEN THEIR BEST HIT", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s4.id)
r23 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "BACK WHEN ROCK WAS ROCK BABY", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s7.id)
r24 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "From the intro beat alone...just iconic...stop it", created_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), updated_at: Time.at(rand((Time.now - (60*60*24*365*5))..Time.now)), song_id: s3.id)


puts "✅ Done seeding!"
