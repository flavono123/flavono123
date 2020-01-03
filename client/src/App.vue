<template>
  <div id="app" :style="{ background: gradient}">
    <Hello/>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Hello from "./components/Hello.vue";

@Component({
  components: {
    Hello
  }
})
export default class App extends Vue {
  get gradient() {
    return `linear-gradient(${Math.random()*360<<0}deg, ${this.generateRandomColor()}, ${this.generateRandomColor()})`
  }

  generateRandomColor() {
    return '#'+(Math.random()*0xFFFFFF<<0).toString(16).padStart(6, '0');
  };
}
</script>

<style>
*,
*::before,
*::after {
  box-sizing: border-box;
}

html {
  font-size: 100%;
}
</style>
