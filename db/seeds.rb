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
a11 = Artist.create(name: "Miles Davis")
a12 = Artist.create(name: "Arctic Monkeys")
a13 = Artist.create(name: "Wes Montgomery")
a14 = Artist.create(name: "Sonic Youth")
a15 = Artist.create(name: "Bjork")

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
s11 = Song.create(name: 'Beat It', year: 1982, artist_id: a3.id, genre_id: g3.id)
s12 = Song.create(name: 'Man in The Mirror', year: 1988, artist_id: a3.id, genre_id: g3.id)
s13 = Song.create(name: 'Human Nature', year: 1982, artist_id: a3.id, genre_id: g3.id)
s14 = Song.create(name: 'Petits Machins', year: 1968, artist_id: a11.id, genre_id: g7.id)
s15 = Song.create(name: '505', year: 2007, artist_id: a12.id, genre_id: g6.id) 
s16 = Song.create(name: 'Yesterdays', year: 1959, artist_id: a13.id, genre_id: g7.id)
s17 = Song.create(name: 'Kissability', year: 1988, artist_id: a14.id, genre_id: g6.id) 
s18 = Song.create(name: 'Joga', year: 1997, artist_id: a15.id, genre_id: g5.id) 


r1 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "Yo I love this song. Greatest song of all time!", song_id: s1.id)
r2 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "It's a good song but it's definitely not the best. Still very catchy.", song_id: s4.id)
r3 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "THE GREATEST SONG EVER !!!!!", song_id: s3.id)
r4 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "Will it stand the test of time? We'll see but for now it's definitely number 1 on my list...", song_id: s10.id)
r5 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 20..40), comment: "I remember when my dad showed me this song, I must've been like 6 years old...", song_id: s1.id)
r6 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "It's not a lot of people's number 1 song but it is mine!!", song_id: s5.id)
r7 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..60), comment: "LOL if this is your favorite song ever, you're crazy", song_id: s3.id)
r8 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "Ehh a very good song, but not a great one. No shot. Not while Thriller exists.", song_id: s3.id)
r9 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "I love it, Idc what anyone else thinks!", song_id: s8.id)
r10 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "His voice has only gotten better with time...this is the GOAT SONG", song_id: s1.id)
r11 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "Their voices are just incredible and the lyrics still resonate...", song_id: s9.id)
r12 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "His flow is insane, I mean who's touching him nowadays??", song_id: s2.id)
r13 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Axl is a lunatic but he killed the vocals here -- whole band was insane! CLASSIC TIMES", song_id: s7.id)
r14 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Bowie's Plastic Soul era is my favorite of all of his -- a slept-on album period IMO", song_id: s6.id)
r15 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "I think Dilla is better but this is just my favorite song ever, no lyrics either", song_id: s5.id)
r16 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "They're not as big as they should be but they're the best ever to me!!!!", song_id: s9.id)
r17 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Everybody loved the Beatles but I liked these guys better", song_id: s10.id)
r18 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..40), comment: "Very overrated rapper, I just don't get it. ", song_id: s2.id)
r19 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "They weren't bad but DEFINITELY NOT THE BEATLES LOL", song_id: s10.id)
r20 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "I doubt most people even know this song but it really speaks to me, IDK why", song_id: s8.id)
r21 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "Thank God I heard this from a Kanye sample bc it's now my favorite song ever hahaha", song_id: s1.id)
r22 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "What idiot voted this song up here? IT'S NOT EVEN THEIR BEST HIT", song_id: s4.id)
r23 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "BACK WHEN ROCK WAS ROCK BABY", song_id: s7.id)
r24 = Review.create(likes: Faker::Number.within(range: 45..100), dislikes: Faker::Number.within(range: 10..50), comment: "From the intro beat alone...just iconic...stop it", song_id: s3.id)


puts "✅ Done seeding!"
