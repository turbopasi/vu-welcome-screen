export const state = {
  config : {

    // GENERAL STYLES
    overlayBackgroundColor        : '#0000FF',
    overlayOpacity                : 0.2,
    screenBackgroundColor         : '#000000',
    screenTextColor               : '#ffffff',
    screenOpacity                 : 0.8,
    
    // BUTTON STYLES
    buttonsTextColor              : '#ffffff',
    buttonsTextOpacity            : 0.9,
    buttonsBackgroundColor        : '#000000',
    buttonsBackgroundOpacity      : 0.9,
    buttonsBorderColor            : '#ffffff',
    buttonsBorderOpacity          : 0.9,

    // ACTIVE BUTTON STYLES
    activeButtonsTextColor              : '#FF0000',
    activeButtonsTextOpacity            : 0.9,
    activeButtonsBackgroundColor        : '#000000',
    activeButtonsBackgroundOpacity      : 0.9,
    activeButtonsBorderColor            : '#FF0000',
    activeButtonsBorderOpacity          : 0.9,
    
    // BUTTON ON-HOVER STYLES
    buttonsHoverTextColor         : '#ffffff',
    buttonsHoverTextOpacity       : 1,
    buttonsHoverBackgroundColor   : '#000000',
    buttonsHoverBackgroundOpacity : 1,
    buttonsHoverBorderColor       : '#439fe0',
    buttonsHoverBorderOpacity     : 1,
    
    // CLOSE BUTTON & AND BEHAVIOUR
    closeButtonText               : 'exit',
    closeAutomatic                : true,
    closeAutomaticSeconds         : 5,
    
    // TABS
    tabs : []
  },
  active    : false,
  activeTab : 0
};

export const vext = {
  setConfig : (data) => {
    state.config = data;
    state.active = true;
  }
}

