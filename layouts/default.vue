<script lang="ts">
/**
 * Info layout
 * @date 2022-11-13
 */
import Vue from 'vue'

import SiteNav from "~/components/SiteNav.vue";
import AccreditedArboretum from "~/components/AccreditedArboretum.vue";

export default Vue.extend({
  components: { SiteNav,AccreditedArboretum },
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
        <a href="https://goo.gl/maps/T4h5QhPpMikFYGQK6" target="map">Cemetery: 3207 Monroe Ave, Cleveland, OH 44113</a>
      </span>
      <AccreditedArboretum/>
    </footer>
  </div>
</template>