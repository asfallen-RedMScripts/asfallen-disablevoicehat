# Voice Disable Script

This script is designed for use with RedM and disables the in-game voice system. It ensures the voice features are completely turned off for players to avoid interference or unintended use during gameplay.

## Features
- Disables the voice system when the resource starts.
- Automatically disables the voice system whenever a player spawns.
- Continuously ensures the voice system remains disabled through a looping check.

## Installation

1. **Download and extract** the script files.
2. Place the files in the `[resources]` folder of your RedM server.
3. Add the following line to your server configuration file (`server.cfg`):
   ```plaintext
   ensure asfallen-disablevoicechat
