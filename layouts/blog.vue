<script lang="ts">
/**
 * Blog layout
 * @date 2022-05-27
 */
import Vue from 'vue'

import SiteNav from "~/components/SiteNav.vue";

export default Vue.extend({
  components: { SiteNav },
});
</script>
<template>
  <div>
    <header>
      <SiteNav/>
    </header>

    <main>
      <Nuxt/>
    </main>

    <footer>
      <span>Monroe Street Cemetery Foundation</span>
      <span>
        <a href="https://goo.gl/maps/T4h5QhPpMikFYGQK6" target="map">3207 Monroe Ave, Cleveland, OH 44113</a>
      </span>
    </footer>
  </div>
</template>