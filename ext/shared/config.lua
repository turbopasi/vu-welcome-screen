-- 
-- 
-- 

return {

  -- GENERAL STYLES
  overlayBackgroundColor        = '#000000',
  overlayOpacity                = 0.5,
  screenBackgroundColor         = '#000000',
  screenTextColor               = '#ffffff',
  screenOpacity                 = 0.8,

  -- BUTTON STYLES
  buttonsTextColor              = '#ffffff',
  buttonsTextOpacity            = 0.7,
  buttonsBackgroundColor        = '#000000',
  buttonsBackgroundOpacity      = 0,
  buttonsBorderColor            = '#ffffff',
  buttonsBorderOpacity          = 0.7,

  buttonWidth                   = 200,

  -- ACTIVE BUTTON STYLES
  activeButtonsTextColor              = '#000000',
  activeButtonsTextOpacity            = 0.9,
  activeButtonsBackgroundColor        = '#ffffff',
  activeButtonsBackgroundOpacity      = 0.9,
  activeButtonsBorderColor            = '#ffffff',
  activeButtonsBorderOpacity          = 0.9,

  closeButtonText                     = 'close',

  -- EXTERNAL DATA SOURCE
  useExternalSource                   = true,
  externalSource                      = 'https://raw.githubusercontent.com/turbopasi/vu-server-assets/main/server/1/welcome-screen.html',

  -- TABS
  -- IF EXTERNAL SOURCE IS USED, THIS WILL BE REPLACED
  tabs = {
    require('__shared/tabs/tab1.lua'),
    require('__shared/tabs/tab2.lua')
  }

}