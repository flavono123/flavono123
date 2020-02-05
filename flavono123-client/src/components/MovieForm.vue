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
      return this.keyword === ""
        ? []
        : this.movies.filter(movie => movie.title.includes(this.keyword));
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
input {
  outline: 0;
  border-width: 0 0 2px;
  border-color: #5ce0d8;
  display: block;
  width: 100%;
  text-align: center;
  font-size: 20px;
}
ul {
  list-style-type: none;
}
li {
  margin-bottom: 5px;
}
</style>
