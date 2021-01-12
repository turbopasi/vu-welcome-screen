<template>
  <div
    id="app"
    v-if="active"
    :style="{
      background : hexToRgbaString(config.overlayBackgroundColor, config.overlayOpacity)
    }">

    <!-- WELCOME SCREEN -->
    <div class="wrapper">

      <!--                            -->
      <!-- SIDE MENU WITH TAB BUTTONS -->
      <!--                            -->
      <div class="tab-menu">
        <div
          class="tab-menu-button"
          v-for="(tab,index) in config.tabs"
          :key="'tab-' + index"
          :class="{ 'is-active' : index === activeTab }"
          :style="index === activeTab ? {
            width       : config.buttonWidth + 'px',
            borderColor : hexToRgbaString(config.activeButtonsBorderColor , config.activeButtonsBorderOpacity),
            background  : hexToRgbaString(config.activeButtonsBackgroundColor, config.activeButtonsBackgroundOpacity),
            color       : hexToRgbaString(config.activeButtonsTextColor, config.activeButtonsTextOpacity)
          } : {
            width       : config.buttonWidth + 'px',
            borderColor : hexToRgbaString(config.buttonsBorderColor , config.buttonsBorderOpacity),
            background  : hexToRgbaString(config.buttonsBackgroundColor, config.buttonsBackgroundOpacity),
            color       : hexToRgbaString(config.buttonsTextColor, config.buttonsTextOpacity)
          }"
          @click="activeTab = index">
          {{ tab.label }}
        </div>
        <div style="flex:1"></div>
        <div
          class="tab-menu-button"
          :style="{
            width       : config.buttonWidth + 'px',
            borderColor : hexToRgbaString(config.buttonsBorderColor , config.buttonsBorderOpacity),
            background  : hexToRgbaString(config.buttonsBackgroundColor, config.buttonsBackgroundOpacity),
            color       : hexToRgbaString(config.buttonsTextColor, config.buttonsTextOpacity)
          }"
          @click="closeWelcomeScreen">
          {{ config.closeButtonText }}
        </div>
      </div>

      <!--                       -->
      <!-- CONTENT OF ACTIVE TAB -->
      <!--                       -->
      <div
        class="inner"
        :style="{
          background : hexToRgbaString(config.screenBackgroundColor, config.screenOpacity),
          color      : config.screenTextColor
        }">
        <!-- <vue-markdown :source="config.tabs[activeTab] ? config.tabs[activeTab].text : '_no-content_'"></vue-markdown> -->
        <div class="htmlviewer"  v-html="config.tabs[activeTab] ? config.tabs[activeTab].text : ''"></div>
      </div>

    </div>
  </div>
</template>

<script>

import VueMarkdown from 'vue-markdown'
import { state } from './vext'

export default {
  name: 'App',
  components: {
    VueMarkdown
  },
  data() {
    return state
  },
  methods: {
    closeWelcomeScreen() {
      WebUI.Call('DispatchEventLocal', 'CloseWelcomeScreen', 1)
    },
    welcomeScreenReady() {
      WebUI.Call('DispatchEventLocal', 'WelcomeScreenReady', 1)
    },
    hexToRgbaString(hex, opacity) {
      const shorthandRegex = /^#?([a-f\d])([a-f\d])([a-f\d])$/i;
      hex = hex.replace(shorthandRegex, function(m, r, g, b) {
        return r + r + g + g + b + b;
      });
      const result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
      return result ? `rgba(${parseInt(result[1], 16)}, ${parseInt(result[2], 16)}, ${parseInt(result[3], 16)}, ${opacity})` : ''
    }
  },
  mounted() {

    this.welcomeScreenReady();

  }
}
</script>

<style>

@font-face {
  font-family: 'Blinker';
  src: url('./assets/fonts/Blinker-Black.woff2') format('woff2');
  font-weight: 900;
}

@font-face {
  font-family: 'Blinker';
  src: url('./assets/fonts/Blinker-ExtraBold.woff2') format('woff2');
  font-weight: 800;
}

@font-face {
  font-family: 'Blinker';
  src: url('./assets/fonts/Blinker-Bold.woff2') format('woff2');
  font-weight: 700;
}

@font-face {
  font-family: 'Blinker';
  src: url('./assets/fonts/Blinker-SemiBold.woff2') format('woff2');
  font-weight: 600;
}

@font-face {
  font-family: 'Blinker';
  src: url('./assets/fonts/Blinker-Regular.woff2') format('woff2');
  font-weight: 400;
}

@font-face {
  font-family: 'Blinker';
  src: url('./assets/fonts/Blinker-Thin.woff2') format('woff2');
  font-weight: 200;
}

@font-face {
  font-family: 'Blinker';
  src: url('./assets/fonts/Blinker-ExtraLight.woff2') format('woff2');
  font-weight: 100;
}

* {
  margin : 0;
  padding : 0;
}

/* body {
  background : url('./assets/bg.jpg')
} */

#app {
  font-family: 'Blinker';
  font-weight: 400;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  height:100vh;
  display:flex;
  justify-content: center;
  align-items: center;
  overflow:hidden;
  flex-direction: column;
}

.wrapper {
  width:50vw;
  min-width:800px;
  height:40vh;
  min-height:500px;
  border-radius:0px;
  display : flex;
}



.tab-menu {
  margin-right  : 10px;
  box-sizing    : border-box;
  display       : flex;
  flex-direction: column;
}

.tab-menu-button {
  font-size                 : 20px;
  padding                   : 7px 15px;

  border                    : 2px solid;
  margin-bottom             : 10px;
  font-family               : 'Blinker';
  box-sizing                : border-box;
  transition                : all 0.2s;
  text-transform            : uppercase;
  overflow:hidden;
}

.tab-menu-button:last-of-type {
  margin-bottom:0px;
}

.tab-menu-button.is-active {
  border : 2px solid rgba(56, 135, 185,1);
  color:  rgb(255, 255, 255)
}

.tab-menu-button:hover {
  border : 2px solid rgba(255,255,255,1);
  margin-bottom : 10px;
  font-family: 'Blinker';
  color: rgba(255,255,255,1);
  box-sizing: border-box;
   -moz-box-shadow:    inset 0 0 10px white;
   -webkit-box-shadow: inset 0 0 10px white;
   box-shadow:         inset 0 0 10px white;
}

.tab-menu-button:last-of-type:hover {
  margin-bottom:0px;
}

/* 

HTML VIEWER

 */

.inner {
  flex: 1;
  padding : 20px;
  overflow-y:scroll;
}

.inner a {
  color : cyan
}

.htmlviewer {
  white-space: pre-line

}

.htmlviewer img {
  max-width : 100%;
  max-height:100%;
  margin-top:15px;
  margin-bottom:10px;
  border-radius:5px;
}

</style>
