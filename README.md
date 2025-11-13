# eight_ball_api.cr
Web-API for www.eightballapi.com The 8Ball API provides a simple and fun way to get mystical responses to yes/no questions. With this API, you can easily integrate a fortune-telling feature into your Discord bots, games, and other applications.

## Example
```cr
require "./eight_ball_api"

eight_ball_api = EightBallApi.new
random_fortune = eight_ball_api.get_random_fortune()
puts random_fortune
```
