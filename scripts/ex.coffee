# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

response_wel = [
  "여긴 마피아와 타뷸라의 늑대를 즐길 수 있는 곳이야! \n들어온걸 환영해! 재밌게 즐겨보아~"
]

module.exports = (robot) ->
 robot.respond /(sleep).*/i, (res) ->
   robot.brain.set 'totalSodas', 0
   res.reply ':zzz:'
 robot.hear /(welcome).*/i, (msg) ->
  msg.send msg.random response_wel
 robot.hear /(사기꾼).*/i, (res) ->
  res.send "사기꾼의 대명사를 찾으시나요? 그럼 이분! @haegyung"
 robot.hear /(@).*/i, (res) ->
#  res.reply "와 #{res.message.text} (이)가 친분도 상승!"
  user = "#{res.message.text}"
  point = 0
  id = {user : point}
 robot.hear /(\*두둠칫얍\*).*/i, (res) ->
  res.send "두둠칫 "
  res.send " ⊂_ヽ "
  res.send "　 ＼＼ Λ＿Λ  "
  res.send "　　 ＼( ‘ㅅ' ) 두둠칫 "
  res.send "　　　 >　⌒ヽ "
  res.send "　　　/ 　 へ＼ "
  res.send "　　 /　　/　＼＼  "
  res.send "　　 ﾚ　ノ　　 ヽ_つ "
  res.send "　　/　/두둠칫 "
  res.send "　 /　/| "
  res.send "　(　(ヽ "
  res.send "　|　|、＼ "
  res.send "　| 丿 ＼ ⌒) "
  res.send "　| |　　) / "
  res.send "`ノ )　　Lﾉ "
  res.send " "
 robot.hear /(\*지빠짜묘라요요\*).*/i, (res) ->
  res.send "@nipol : 진짜 맛있었어요. :soju: (박제본 https://goo.gl/PMcBrJ)" 
 robot.hear /(\*마피아\*).*/i, (res) ->
  res.send "마피아의 요정 @nipol 찾으셨나요?"
 robot.hear /(\*두둠칫\*).*/i, (res) ->
  res.send  " ¯\_ ( ‘ㅅ' )_/¯ " 
 robot.hear  /(\*오예\*).*/i, (res) ->
  res.send "＼\ ٩( ᐛ )و /／  오예!"
#  res.send "end!"
#  robot.brain.set id.point, id.point+1
#  res.send robot.brain
  robot.respond /(@).*/i, (res) ->
    name = res.match[1].trim()
    users = robot.brain.usersForFuzzyName(name)
    if users.length is 1
      user = users[0]
      # Do something interesting here..
      res.send "#{name} is user - #{user}"

 # robot.topic (res) ->
  # robot.hear /badger/i, (res) ->
  #   res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #  room   = req.params.room
  #  data   = JSON.parse req.body.payload
  #  secret = data.secret
  
  # robot.messageRoom room, "I have a secret: #{secret}"
  
  #  res.send 'OK'
  # 
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
