#! /usr/bin/env ruby

require 'cinch'

$bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.freenode.net'
    c.user = 'kittybot'
    c.nick = 'KittyBot'
    c.realname = 'The Kitty Bot, of course!'
    c.channels = ['#kittybot']
  end
  
  on :message, "!pokekittybot" do |m|
    m.reply "Ouch!"
  end
end

$bot.start
