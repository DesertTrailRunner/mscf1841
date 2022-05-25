<script lang="ts">
/**
 * Info page
 * @date 2022-05-21
 */
import Vue from "vue";

// import SpinnerNotice from "../lib/ui/components/SpinnerNotice.vue";
// import RouterNav from "../lib/ui/components/RouterNav.vue";

export default Vue.extend({
  // components: { SpinnerNotice, RouterNav },
});
</script>
<template>
  <v-app>
    <v-navigation-drawer app>
      <!-- -->
    </v-navigation-drawer>

    <v-app-bar app
      absolute
      color="#fcb69f"
      dark
      shrink-on-scroll
      src="https://picsum.photos/1920/1080?random"
      scroll-target="#main-content"
    >
      <template v-slot:img="{ props }">
        <v-img
          v-bind="props"
          gradient="to top right, rgba(19,84,122,.5), rgba(128,208,199,.8)"
        ></v-img>
      </template>

      <v-app-bar-nav-icon></v-app-bar-nav-icon>

      <v-app-bar-title>Monroe Street Cemetery Foundation</v-app-bar-title>
    </v-app-bar>

    <v-main id="main-content">
      <v-container fluid>
        <Nuxt />
      </v-container>
    </v-main>

    <v-footer app>
      <span>Monroe Street Cemetery Foundation</span>
      <span>
        <a href="https://goo.gl/maps/T4h5QhPpMikFYGQK6" target="map"
          >3207 Monroe Ave, Cleveland, OH 44113</a
        >
      </span>
    </v-footer>
  </v-app>
</template>