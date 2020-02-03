<template>
  <div class="movie-form">
    <input v-model="keyword" type="text" />
    <ul>
      <li v-for="movie in matchedMovies" :key="movie.id">
        {{ movie.title }}
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "MovieForm",
  data() {
    return {
      keyword: "",
      movies: [{ title: "Midsoma" }, { title: "Border" }]
    };
  },
  computed: {
    matchedMovies() {
      return this.movies.filter(movie => movie.title.includes(this.keyword));
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped />
