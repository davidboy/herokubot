    qo: has anyone used Heroku with a cinch bot?
    davidboy: Lemme try...  :D
    Azure: Ooh, sounds interesting.
    davidboy: Should be a matter of one line in the procfile

I was wrong.  It's actually more like two lines. :P  For an explanation of what a Procfile is, see http://devcenter.heroku.com/articles/procfile  Come to find out, you'll also need to create an empty config.ru to trick heroku into thinking the bot is a normal rack app.  The rest of the files are just standard cinch bot stuff.

To deploy to heroku, run:

    gem install heroku
    heroku create --stack cedar
    git push heroku master
    heroku scale web=0
    heroku scale bot=1
