local config = require('__shared/config.lua')


-- ++++++++++++++++ --
-- VEXT EVENTS      --
-- ++++++++++++++++ --

-- Events:Subscribe('Extension:Loaded', function()
--   print('Extension Loaded')
--   print('Initialized WebUI')
--   WebUI:Init()
--   WebUI:Hide()
-- end)

Events:Subscribe('Level:Loaded', function()
  print('Showing WebUI')
  WebUI:Init()
  WebUI:Show()
end)

-- ++++++++++++++++ --
-- WEBUI EVENTS     --
-- ++++++++++++++++ --

Events:Subscribe('WelcomeScreenReady', function(data)

  print('Welcome screen ready')
  local dataJson = json.encode(config);
  print(dataJson)
  WebUI:ExecuteJS('vext.setConfig(' .. dataJson .. ');')
  print('Successfully sent text to WebUI')

  -- bring ui to front and enable ui-mouse/ disable ui-keyboard
  WebUI:BringToFront()
  WebUI:EnableKeyboard()
  WebUI:EnableMouse()

end)

Events:Subscribe('CloseWelcomeScreen', function(data)

  -- disable ui input
  -- hide ui
  WebUI:ResetKeyboard();
  WebUI:ResetMouse();
  WebUI:Hide();

  -- unsubscribe from all events
  Events:Unsubscribe()

end)