use AppleScript version "2.4" -- Yosemite (10.10) or later


set backupClipboard to the clipboard

tell application "System Events"

set the clipboard to backupClipboard
	add link newLink
end tell