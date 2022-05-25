<script lang="ts">
/**
 * Info page
 * @date 2022-05-25
 */
import Vue from "vue";

// import SpinnerNotice from "../lib/ui/components/SpinnerNotice.vue";
// import RouterNav from "../lib/ui/components/RouterNav.vue";

export default Vue.extend({
  // components: { SpinnerNotice, RouterNav },
  data() {
    return {
      isNavDrawerVisible: true,
      items: ["one", "two"],
    };
  },
});
</script>
<template>
  <v-app>
    <v-app-bar
      app
      absolute
      color="#fcb69f"
      dark
      shrink-on-scroll
      :src="require(`~/assets/images/gatehouse-and-gate.jpg`)"
      scroll-target="#main-content"
    >
      <template v-slot:img="{ props }">
        <v-img
          v-bind="props"
          gradient="to top right, rgba(19,84,122,.5), rgba(128,208,199,.8)"
        ></v-img>
      </template>

      <v-app-bar-nav-icon @click.stop="isNavDrawerVisible = !isNavDrawerVisible"></v-app-bar-nav-icon>

      <v-app-bar-title>Monroe Street Cemetery Foundation</v-app-bar-title>

      <v-spacer></v-spacer>

      <template v-slot:extension>
        <v-list nav>
          <v-list-item v-for="(item, i) in $router.routes" :key="i" link>
            <v-list-item-content>
              <v-list-item-title>{{ item }}</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list>
      </template>
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