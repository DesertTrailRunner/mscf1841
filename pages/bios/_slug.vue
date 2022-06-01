<script>
/**
 * Biographies
 * 2022-06-01
 */
import PrevNext from "~/components/PrevNext";

export default {
  components: { PrevNext },
  async asyncData({ $content, params }) {
    const bio = await $content("bios", params.slug).fetch();
    const [prev, next] = await $content("bios")
      .only(["title", "slug"])
      .sortBy("title", "asc")
      .surround(params.slug)
      .fetch();
    return { bio, prev, next };
  },
};
</script>

<template>
  <div class="biography">
    <h1>{{ bio.title }}</h1>
    <article>
      <nuxt-content :document="bio" />
    </article>
    <prev-next :prev="prev" :next="next" />
  </div>
</template>
