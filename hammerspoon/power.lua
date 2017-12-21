hs.battery.watcher.new(function() 
  if hs.battery.isCharging() then
    app = hs.application.find("Übersicht")
    if app == False then
      hs.application.open("Übersicht")
    end
  else
    app = hs.application.find("Übersicht")
    if hs.battery.percentage() < 90 and app then
      hs.application.kill(app)
    end
  end
end):start()


