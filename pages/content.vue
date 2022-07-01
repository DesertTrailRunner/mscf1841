<script lang="ts">
/**
 * Redirects from WordPress site
 */
import Vue from "vue";

const REDIRECTS: object = {
  "32": "/maps-and-records",
  "29": "/maps-and-records",
  "65": "/bios",
  "148": "/history",
  "135": "/history",
  "84": "/donate",
  "268": "/membership",
  "97": "/gift-shop",
  "151": "/research",
  "87": "/about",
  "216": "/bios/Frese",
  "207": "/bios/Tyler",
  "140": "/bios/Smith",
  "75": "/bios/Ruthenberg",
  "62": "/bios/Roy",
};

export default Vue.extend({
  name: "ContentPage",
  layout: "default",
  mounted() {
    try {
      let matches = location.search.match(/\d+/);
      if (matches && matches.length) {
        let id = matches[0];
        if (id) {
          //@ts-ignore
          let path = REDIRECTS[id];
          if (path) this.$router.push({ path: `${path}` });
          else this.$router.push({ path: `/` });
        } else this.$router.push({ path: `/` });
      } else this.$router.push({ path: `/` });
    } catch (e) {
      this.$router.push({ path: `/` });
    }
  },
});
</script>

<template>
  <div>redirect</div>
</template>

<style scoped></style>
