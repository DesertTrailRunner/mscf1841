<script lang="ts">
/**
 * ImageFigure
 * @date 2022-05-31
 */
import Vue, { PropOptions } from "vue";

interface ICompData {
}

export default Vue.extend({
    props: {
        src: String,
        caption: String,
        size: String
    }
});
</script>

<template>
  <figure>
    <img :class="size" :src="require(`~/assets/${src}`)"/>
    <figcaption>{{caption}}</figcaption>
  </figure>
</template>

<style scoped>
img.small {
  max-height: 100px;
  width: auto;
}
img.medium {
  max-height: 300px;
  width: auto;
}
img.large {
  max-height: 600px;
  width: auto;
}
</style>