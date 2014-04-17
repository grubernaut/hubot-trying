# Description:
#   Do or do not do.
#
# Commands:
#   try to do awesome things - get a helpful hint
#   we tried that - get more helpful hints
#
# Notes:
#   None
#
# Author:
#   meatballhat

tryMessages = [
  'do or do not do',
  'there is no try',
  'just give up now',
  'this seems like an interesting idea, but it is clearly going to fail',
  'you should get some funding and build a startup!',
  'add it to the list',
  'all you have to do is put it in tracker!',
  'insert yoda'
]
triedMessages = [
  'and yet you failed',
  'were you surprised by the outcome?',
  'a sample size of 1 is a great start',
  'no use in going through that again',
  'oh well',
  'tell me more about your pain',
  'at least you have this moment of regret'
]

module.exports = (robot) ->
  robot.hear /\btry(\b|[[:punct:]])/i, (msg) ->
    msg.send msg.random(tryMessages)

  robot.hear /\btried(\b|[[:punct:]])/i, (msg) ->
    msg.send msg.random(triedMessages)
