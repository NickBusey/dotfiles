require 'autoreload'
require 'caffeine'
require 'mouse'
require 'power'
require 'timers'
require 'wifi'
require 'windows'

-- Add paste spoofing
hs.hotkey.bind({"cmd", "alt"}, "V", function() hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)
