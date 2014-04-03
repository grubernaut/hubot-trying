// Description:
//   Do or do not do.
//
// Commands:
//   I think we should try to do more awesome stuff
//   I tried that awesome thing one time
//
'use strict';

var tryMessages = [
    'do or do not do',
    'there is no try',
    'just give up now',
    'this seems like an interesting idea, but it is clearly going to fail',
    'you should get some funding and build a startup!',
    'add it to the list',
    'all you have to do is put it in tracker!',
    'insert yoda'
  ],
  triedMessages = [
    'and yet you failed',
    'were you surprised by the outcome?',
    'a sample size of 1 is a great start',
    'no use in going through that again',
    'oh well',
    'tell me more about your pain',
    'at least you have this moment of regret'
  ];

module.exports = function (robot) {
  robot.hear(/\btry(\b|[[:punct:]])/i, function (msg) {
    msg.send(msg.random(tryMessages));
  });

  robot.hear(/\btried(\b|[[:punct:]])/i, function (msg) {
    msg.send(msg.random(triedMessages));
  });
};
