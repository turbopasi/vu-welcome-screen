import { parse } from 'node-html-parser';

export const state = {
  config : {

    // GENERAL STYLES
    overlayBackgroundColor        : '#000000',
    overlayOpacity                : 0.5,
    screenBackgroundColor         : '#000000',
    screenTextColor               : '#ffffff',
    screenOpacity                 : 0.8,
    
    // BUTTON STYLES
    buttonsTextColor              : '#ffffff',
    buttonsTextOpacity            : 0.7,
    buttonsBackgroundColor        : '#000000',
    buttonsBackgroundOpacity      : 0.7,
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
    
    // EXTERNAL DATA SOURCE
    useExternalSource             : true,
    externalSource                : '',

    // TABS
    tabs : [

    ]

  },
  active    : false,
  activeTab : 0
};

export const vext = {
  setConfig : (data) => {

    console.log(data);

    // IF EXTERNAL SOURCE IS USED, WE NEED TO PARSE TABS
    if (data.useExternalSource && data.tabs != "") {

      let readyTabs = [];
      const root = parse(data.tabs);
      const tabs = root.querySelectorAll('tab');
      for(let tab of tabs) {
        let label = tab.querySelector('label');
        let text = tab.querySelector('content');
        readyTabs.push({
          label : label.text,
          text : text.innerHTML
        });
      }
      data.tabs = readyTabs;
      state.config = data;
      state.active = true;

    } else {

      state.config = data;
      state.active = true;

    }

  }
}

