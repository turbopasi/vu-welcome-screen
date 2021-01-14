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

  -- if use of external source, perform request
  if(config.useExternalSource) and (config.externalSource ~= "") then
    local HttpResponse = Net:GetHTTP(config.externalSource)
    if(HttpResponse) and (HttpResponse.body) then
      config.tabs = HttpResponse.body
    end
  end

  -- encode to json string
  local configJson = json.encode(config);

  -- execute method in WebUI 
  WebUI:ExecuteJS('vext.setConfig(' .. configJson .. ');')

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