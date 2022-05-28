<script lang="ts">
/**
 * ImageFigure
 * @date 2022-05-28
 */
import Vue, { PropOptions } from "vue";

interface ICompData {
}

export default Vue.extend({
    props: {
        src: String,
        caption: String
    }
});
</script>

<template>
  <figure>
    <img :src="require(`~/assets/${src}`)"/>
    <figcaption>{{caption}}</figcaption>
  </figure>
</template>

<style scoped>
</style>