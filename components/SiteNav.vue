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
      if (this.$router && this.$router.options && this.$router.options.routes) {
        this.$router.options.routes.forEach((route: any) => {
          if (route.name && route.path && route.path.lastIndexOf("/") == 0)
            this.navigationItems.push(route);
        });
      }

      this.navigationItems.sort((a,b)=>{
        if (a.name=="index") return -1;
        else if (b.name=="index") return 1;
        else return a.name.localeCompare(b.name);
      });
    },
    createLabel(routeName:string):string {
        if (routeName=="index") return "Home";
        else {
          let words = routeName.split('-'),
            label = "";
          for (let w=0; w<words.length; w++) {
            words[w] = words[w].charAt(0).toUpperCase()+words[w].substring(1);
          }
          return words.join(' ');
        }
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