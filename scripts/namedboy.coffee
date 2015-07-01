
module.exports = (namedboy) ->
 namedboy.respond /(helo).*/i, (res) ->
  res.send "냐옹"
