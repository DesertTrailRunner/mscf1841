<script>
/**
 * Biographies
 * 2022-05-31
 */
export default {
  async asyncData({ $content, params }) {
    // console.log($content);
      const bio = await $content('bios', params.slug).fetch()
    // const bio = {};
    return { bio };
  },
};
</script>

<template>
  <article>
    <nuxt-content :document="bio" />
  </article>
</template>
