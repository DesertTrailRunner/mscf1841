<script lang="ts">
/**
 * Info layout
 * @date 2023-06-14
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
      <div>Monroe Street Cemetery Foundation</div>
      <div>
        <a href="https://goo.gl/maps/T4h5QhPpMikFYGQK6" target="map">Cemetery: 3207 Monroe Ave, Cleveland, OH 44113</a>
        <span>Foundation: P.O. BOX 93671, CLEVELAND, OHIO 44101</span>
      </div>
      <AccreditedArboretum/>
    </footer>
  </div>
</template>