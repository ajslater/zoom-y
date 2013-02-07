vertical_zoom
=============

An AppleScript for maximizing the 'zoom' of windows to the display height. Very useful for terminal windows if hotkeyed.

OS X has an odd window manager. One of its oddest quirks is how unpredictable the green maximize or ‘zoom’ button can be. Different applications have customized zoom behavior and often its not the behavior I would expect or choose. Who, for instance, would want their terminal app to zoom its horizontal dimension as well as its vertical?

JDSmith came up with a [Vertical Zoom applescript](http://hints.macworld.com/article.php?story=20050428173653581). It maximizes the vertical span of the active window without touching the horizontal. I tend to use it on Terminal and Safari. I recommend you change the hardcoded Y value at the top of the script to 1600. OS X converts Y values larger than your screen to your screen’s limit.

Another quirk of OSX is its stinginess with customizable hot-keys. I bind the vertical zoom script to F13 and Command-F12 (for the small keyboard) with [Spark](http://www.shadowlab.org/Software/spark.php).
