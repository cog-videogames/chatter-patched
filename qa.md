# QA

## Example test macro

Easy way to check whispers, bnet whispers, chat channels, alt-click invites, and HTTP links. Change "4" to the correct number if you are in custom channels already, and replace CHARACTER, SERVER, and BNET with the correct values:

```
/join CTestChan
/w CHARACTER-SERVER test : test
/w BNET Example https://www.github.com
/4 Channel message to CTestChan
```

## Working in upstream:

- Edit Box Polish
	- Boders and background should work

- Copy chat
	- Modal should have a background

- Alt Linking
	- "Use guildnotes" enabled: should not crash

## Working in this fork:

- Channel Names
	- Replacing General, Trade, and LocalDefense works

- URL Copy
	- Clicking an HTTP link should not crash

- Invite links
	- Alt click name should not crash

- Player Names
	- Bnet messages should appear
	- Clicking a Bnet player name to compose should not crash

## Broken:

- Copy Chat
	- Window is empty when there is a bnet message in the channel. No lua error occurs for this one.

- Player Names
	- "Emphasize self in messages" does not work, but at least it won't crash.
	- Won't replace or remove [name brackets].

## KB

Global chat channels screwed up: https://us.battle.net/support/en/article/9738
