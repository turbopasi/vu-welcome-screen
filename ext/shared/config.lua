-- 
-- 
-- 

return {

  -- GENERAL STYLES
  overlayBackgroundColor        = '#000000',
  overlayOpacity                = 0.5,
  screenBackgroundColor         = '#000000',
  screenTextColor               = '#ffffff',
  screenOpacity                 = 0.7,

  -- BUTTON STYLES
  buttonsTextUppercase          = true,
  buttonsTextColor              = '#ffffff',
  buttonsTextOpacity            = 0.9,
  buttonsBackgroundColor        = '#000000',
  buttonsBackgroundOpacity      = 0.9,
  buttonsBorderColor            = '#ffffff',
  buttonsBorderOpacity          = 0.9,

  -- ACTIVE BUTTON STYLES
  activeButtonsTextUppercase          = true,
  activeButtonsTextColor              = '#439fe0',
  activeButtonsTextOpacity            = 0.9,
  activeButtonsBackgroundColor        = '#000000',
  activeButtonsBackgroundOpacity      = 0.9,
  activeButtonsBorderColor            = '#439fe0',
  activeButtonsBorderOpacity          = 0.9,

  closeButtonText                     = 'close',

  -- BUTTON ON-HOVER STYLES
  -- yet not supported
  -- buttonsHoverTextUppercase     = true,
  -- buttonsHoverTextColor         = '#ffffff',
  -- buttonsHoverTextOpacity       = 1,
  -- buttonsHoverBackgroundColor   = '#000000',
  -- buttonsHoverBackgroundOpacity = 1,
  -- buttonsHoverBorderColor       = '#439fe0',
  -- buttonsHoverBorderOpacity     = 1,

  -- CLOSING BEHAVIOUR
  -- yet not supported
  -- closeAutomatic                = true,
  -- closeAutomaticSeconds         = 5,

  -- TABS
  tabs = {
    require('__shared/tabs/tab1.lua'),
    require('__shared/tabs/tab2.lua')
  }

}