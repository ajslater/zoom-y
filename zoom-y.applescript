#!/usr/bin/osascript
# zoom the current app's window vertically to fill the screen
# Author: AJ Slater <aj@slater.net>
tell application "Finder"
	set {desktop_x1, desktop_y1, desktop_x2, desktop_y2} to bounds of window of desktop
end tell

tell front window
	set {x1, y1, x2, y2} to (get bounds)
	
	if y1 < 0 then
		-- above the origin desktop
		set y1 to desktop_y1
		set y2 to 0
	else
		-- on the origin desktop
		set y1 to 0
		set y2 to desktop_y2
	end if
	
	set bounds to {x1, y1, x2, y2}
end tell