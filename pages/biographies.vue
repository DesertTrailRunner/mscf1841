<script lang="ts">
/**
 * Biographies
 * @date 2022-06-03
 */
import Vue from "vue";
import BiographyThumbnail from "~/components/BiographyThumbnail.vue";

export default Vue.extend({
  name: "BiographiesPage",
  layout: "default",
  head: {
    title: "Biographies those interned at Monroe Street Cemetery",
    meta: [
      {
        hid: "description",
        name: "description",
        content: "",
      },
    ],
  },
  components: { BiographyThumbnail },
  async asyncData({ $content, params }) {
    const bios = await $content("bios")
      .only(["title", "slug", "thumbnailUrl", "last", "category", "path", "pubdate"])
      .sortBy("last", "asc")
      .fetch();

    return {
      bios,
    };
  },
});
</script>

<template>
  <div>
    <h1>Biographies</h1>

    <p style="margin-bottom: 3em">
      Read about the many stories of the families and individuals resting in
      peace at the Monroe Street Cemetery.
    </p>
    <div class="biographies">
      <BiographyThumbnail v-for="(bio,b) in bios" :key="b" :bio="bio"/>
    </div>
  </div>
</template>

