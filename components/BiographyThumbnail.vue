<script lang='ts'>
/**
 * BiographyThumbnail
 * @date 2022-06-23
 */
import Vue, { PropOptions } from "vue";

export default Vue.extend({
  props: {
    bio: { type: Object, required: true }
  },
});
</script>

<template>
  <NuxtLink class="biography-thumbnail" :to="{ path: bio.path }">
    <img
      v-if="bio.thumbnailUrl"
      :src="require(`~/assets/images/bios/${bio.thumbnailUrl}`)"
    />
    <span>{{ bio.title }}</span>
  </NuxtLink>
</template>

<style scoped>
</style>