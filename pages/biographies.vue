<script lang="ts">
/**
 * Biographies
 * @date 2022-06-02
 */
import Vue from "vue";

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
  async asyncData({ $content, params }) {
    const bios = await $content("bios")
      .only(["title", "slug", "thumbnailUrl", "path"])
      .sortBy("title", "asc")
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

    <p style="margin-bottom: 3em">Read about the many stories of the families and individuals resting in peace at the Monroe Street Cemetery.</p>

    <div class="biographies">
      <NuxtLink
        class="biography-thumbnail"
        v-for="(bio, b) of bios"
        :key="b"
        :to="{ path: bio.path }"
      >
        <img
          v-if="bio.thumbnailUrl"
          :src="require(`~/assets/images/bios/${bio.thumbnailUrl}`)"
        />
        <span>{{ bio.title }}</span>
      </NuxtLink>
    </div>
  </div>
</template>

