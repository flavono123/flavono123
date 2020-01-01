<template>
  <div id="app">
    <Hello msg="Welcome to Your Vue.js + TypeScript App" />
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
export default class App extends Vue {}
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
