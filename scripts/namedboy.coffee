
module.exports = (namedboy) ->
 namedboy.respond /(helo).*/i, (res) ->
  res.send "냐옹"

module.exports = (robot) ->
 robot.respond /(helo).*/i, (res) ->
  res.send "niyaong"
