#Requires AutoHotkey v2.0

; Your webhook URL
url := "xxx" ; use the URL from Discord webhook bot

; Define the post data
postdata := "
(
{
  "content": "",
  "embeds": [
    {
      "title": "Macro executed",
      "description": "",
      "url": "",
      "color": 8280002,
      "thumbnail": {
        "url": ""
      },
      "image": {
        "url": ""
      }
    }
  ]
}
)"

; Create a WebRequest object
WebRequest := ComObject("WinHttp.WinHttpRequest.5.1")
WebRequest.Open("POST", url, false)
WebRequest.SetRequestHeader("Content-Type", "application/json")
WebRequest.Send(postdata)

; Log the response
FileAppend "Webhook sent successfully at " A_Now "`nResponse: " WebRequest.ResponseText "`n", "log.txt"
