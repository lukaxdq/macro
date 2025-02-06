# Discord Macro Automation

This project automates the execution of specific commands in Discord and sends a webhook notification with the execution count and log details.

## Requirements

- [AutoHotkey v2.0](https://www.autohotkey.com/download/)

## Setup

1. **Install AutoHotkey v2.0**: Download and install AutoHotkey v2.0 from the official website.

2. **Clone the Repository**: Clone this repository to your local machine.

3. **Configure Webhook URL**: Update the `url` variable in `webhook.ahk` with your Discord webhook URL.

## Usage

### Running the Macro

1. **Run the Script**: Double-click `main.ahk` to start the script.
2. **Manual Trigger**: Press `Ctrl + M` to manually trigger the macro.
3. **Stop the Script**: Press `Ctrl + S` to stop the script.

### Webhook Notification

The script sends a webhook notification to the configured Discord webhook URL with the following details:
- Execution count
- Log file content

### Log Files

- `log.txt`: Contains the execution count and timestamps.
- `error_log.txt`: Contains any errors encountered during execution.

## Files

- `main.ahk`: The main script that automates the Discord commands and triggers the webhook.
- `webhook.ahk`: The script that sends the webhook notification.
- `log.txt`: Log file containing execution details.
- `error_log.txt`: Log file containing error details.

## Example

Here is an example of the webhook notification content:

```json
{
  "content": "Macro executed 5 times. Log file content:\n```\nMacro executed 5 times at 2023-10-10 10:10:10\n```",
  "embeds": [
    {
      "title": "Macro executed 5 times",
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