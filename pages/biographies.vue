<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "BiographiesPage",
  layout: "default",
  head: {
    title: 'Biographies those interned at Monroe Street Cemetery',
    meta: [
      {
        hid: 'description',
        name: 'description',
        content: ''
      }
    ]
  },
  async asyncData({ $content, params }) {
    const bios = await $content("bios")
      .only(["title", "slug", "img", "path"])
      .sortBy("title", "asc")
      .fetch();

    console.log(bios);

    return {
      bios,
    };
  },
});
</script>

<template>
  <div>
    <h1>Biographies</h1>

    <div class="columns2">
      <section>
        <div v-for="(bio, b) of bios" :key="b">
          <NuxtLink :to="{ path: bio.path }">
            <img :src="bio.img" />
            <h2>{{ bio.title }}</h2>
          </NuxtLink>
        </div>
      </section>

      <section></section>
    </div>
  </div>
</template>

