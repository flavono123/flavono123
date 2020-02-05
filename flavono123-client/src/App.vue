<template>
  <div id="app">
    <movie-form />
  </div>
</template>

<script>
import MovieForm from "./components/MovieForm.vue";

export default {
  name: "app",
  components: {
    MovieForm
  }
};
</script>

<style>
@font-face {
  font-family: a시네마L;
  src: url(../public/a시네마L.ttf) format("truetype");
}

#app,
input {
  font-family: a시네마L;
  font-size: 20px;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #5ce0d8;
  margin-top: 60px;
}
</style>
