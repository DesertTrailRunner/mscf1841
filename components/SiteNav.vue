<script lang="ts">
/**
 * SiteNav
 * @date 2022-05-26
 */
import Vue, { PropOptions } from "vue";
//import { RouteRecordRaw } from "vue-router";

interface ICompData {
  navigationItems: any[];
}

export default Vue.extend({
  data: () => {
    return {
      navigationItems: [],
    } as ICompData;
  },
  mounted() {
    this.buildNavigation();
  },
  methods: {
    buildNavigation() {
        console.log(this.$router.options.routes);
        
      if (this.$router && this.$router.options && this.$router.options.routes) {
        this.$router.options.routes.forEach((route: any) => {
          if (route.name && route.path && route.path.lastIndexOf("/") == 0)
            this.navigationItems.push(route);
        });
      }
    },
    createLabel(routeName:string):string {
        return routeName.toUpperCase();
    }
  },
});
</script>

<template>
  <nav>
    <NuxtLink v-for="(route, r) in navigationItems" :key="r" :to="route.path">{{
      createLabel(route.name)
    }}</NuxtLink>
  </nav>
</template>

<style scoped>
nav {
  display: flex;
  align-items: center;
  height: 100%;
  flex-wrap: wrap;
}
</style>