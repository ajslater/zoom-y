#!/usr/bin/osascript
# zoom the current app's window vertically to fill the screen
set display_y_size to 2160

set cur_app to (path to frontmost application as Unicode text)
if cur_app ends with ":Finder.app:" then
  set Finder to true
  tell application "Finder"
    set tool_vis to toolbar visible of front window
  end tell
else
  set Finder to false
end if

tell application cur_app
  tell front window
    set {x1, y1, x2, y2} to (get bounds)
    if Finder then
      -- Finder uses inside of frame for bounds, not counting toolbar
      if tool_vis then
        set y1 to 83
      else
        set y1 to 44
      end if
      -- Explicit y size of your display
      set y2 to display_y_size - 5
    else
      set y1 to 22
      set y2 to display_y_size
   end if
   set bounds to {x1, y1, x2, y2}
 end tell
end tell
