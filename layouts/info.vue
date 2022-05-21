<script lang="ts">
/**
 * Info page
 * @date 2022-05-21
 */
import Vue from 'vue'

// import SpinnerNotice from "../lib/ui/components/SpinnerNotice.vue";
// import RouterNav from "../lib/ui/components/RouterNav.vue";

export default Vue.extend({
  // components: { SpinnerNotice, RouterNav },
});
</script>
<template>
  <div>
    <header>
      <!-- <RouterNav></RouterNav> -->
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