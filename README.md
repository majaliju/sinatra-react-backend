# BACKEND of BEST SONG REVIEWS

<!-- <img src="https://img.shields.io/badge/phase3-project-red?style=flat-square&logo=ruby"> -->
<img src="https://img.shields.io/badge/phase3-project-red?style=flat-square&logo=ruby">

## WHAT IS THIS?
- This is the backend repo of the [BEST SONG REVIEWS website](http://reviews.majaliju.com/).
- You can also visit directly at [reviews.majaliju.com](http://reviews.majaliju.com/).

## INTRODUCTION

- Since the beginning of recorded history, humans have expressed an interest in music. The spectrum of musical appreciation can range from anthropological significance all the way to mere background noise while doing dishes. Nonetheless, all lovers of music have a preference towards certain types. These are often call, at least in the Western World, our "favorite songs."
- This site is meant to offer a simple page where users can post their favorite song: complete with the year of the song's release, the song's artist, and the primary genre the song belongs to. Users can leave reviews (as many as they want) under any song, and users can also like or dislike (as much as they want) any review under any song. Through the likes and dislikes of these reviews, we can get a sense of how much people agree or disagree with how others feel about the song! 
- On the right-hand side, there's a running tally of each artist, genre, and song that appears on this list. There's also a light and dark mode.

## A BRIEF VISUAL IN ACTION
![add-demo](https://github.com/majaliju/sinatra-react-backend/blob/main/project3_demo.gif)

## INSTALLATION

[**You can fork a copy here**][fork link] of this backend repo. After you fork it,  clone it to your local machine by using either HTTPS or SSH on the green button labelled 'Code' on the upper right. 
From there, feel free to run
`bundle install` to install the gems.

[fork link]: https://github.com/majaliju/sinatra-react-backend/fork

To start up migrations and get the database in action:
```console
$ bundle exec rake db:migrate 
```

To seed the database with some starter information (supplied within db/seeds.rb):
```console
$ bundle exec rake db:seed
```

After this, you can start up a local server by going to a terminal and typing in: 
```console
$ bundle exec rake server
```
By default, the above command will run your server on:
[http://localhost:9292](http://localhost:9292).



- NOTE: currently this is deployed to Heroku via postgres but is going to be migrated soon to Render. It's currently configured to deploy to Heroku but to be able to use it on your local machine, follow the instructions in WORKAROUND-NOTE.md file. This backend is going to be deployed to Render and this is a quick workaround in the meantime. From the future moving on, you will be able to deploy it locally without any adjustments. ***


## WHERE?
[You can use the BEST SONG REVIEWS website right here!](https://majaliju.com/)<br />

[The frontend repo is here on GitHub.](https://github.com/majaliju/sinatra-react-frontend)<br />

## TOOLS
On the backend, I used:<br />
[Ruby](https://www.ruby-lang.org/en/) <br />
[Sinatra](https://sinatrarb.com/)<br />
[ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html)<br />
On the frontend, I used:<br />
[React](https://reactjs.org/)<br />
[ChakraUI](https://chakra-ui.com/)<br />

## BLOG
[A link to my blog about phase3 can be found here, where I discuss my journey with ActiveRecord!](https://medium.com/@majalijunyc/the-fun-of-activerecord-associations-and-the-journey-that-lead-me-to-includes-c15cabf0957)

