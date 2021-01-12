export const state = {
  config : {

    // GENERAL STYLES
    overlayBackgroundColor        : '#000000',
    overlayOpacity                : 0.9,
    screenBackgroundColor         : '#000000',
    screenTextColor               : '#ffffff',
    screenOpacity                 : 0.8,
    
    // BUTTON STYLES
    buttonsTextColor              : '#ffffff',
    buttonsTextOpacity            : 0.7,
    buttonsBackgroundColor        : '#000000',
    buttonsBackgroundOpacity      : 0,
    buttonsBorderColor            : '#ffffff',
    buttonsBorderOpacity          : 0.7,

    buttonWidth                   : 200,

    // ACTIVE BUTTON STYLES
    activeButtonsTextColor              : '#000000',
    activeButtonsTextOpacity            : 0.9,
    activeButtonsBackgroundColor        : '#FFFFFF',
    activeButtonsBackgroundOpacity      : 0.9,
    activeButtonsBorderColor            : '#FFFFFF',
    activeButtonsBorderOpacity          : 0.9,
    
    // CLOSE BUTTON & AND BEHAVIOUR
    closeButtonText               : 'CLOSE',
    
    // TABS
    tabs : [

    ]
  },
  active    : true,
  activeTab : 0
};

export const vext = {
  setConfig : (data) => {
    state.config = data;
    state.active = true;
  }
}

