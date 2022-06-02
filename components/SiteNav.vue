<script lang="ts">
/**
 * SiteNav
 * @date 2022-06-02
 */
import Vue, { PropOptions } from "vue";
//import { RouteRecordRaw } from "vue-router";

interface ICompData {
  navigationItems: any[];
  isMobileListVisible: boolean;
}

export default Vue.extend({
  data: () => {
    return {
      navigationItems: [],
      isMobileListVisible: false,
    } as ICompData;
  },
  watch: {
    $route() {
      if (this.isMobileListVisible) this.toggleNav();
    },
  },
  mounted() {
    this.buildNavigation();
  },
  methods: {
    buildNavigation() {
      if (this.$router && this.$router.options && this.$router.options.routes) {
        this.$router.options.routes.forEach((route: any) => {
          if (
            route.name &&
            route.path &&
            route.path.lastIndexOf("/") == 0 &&
            route.name != "content"
          )
            this.navigationItems.push(route);
        });
      }

      this.navigationItems.sort((a, b) => {
        if (a.name == "index") return -1;
        else if (b.name == "index") return 1;
        else return a.name.localeCompare(b.name);
      });
    },
    createLabel(routeName: string): string {
      if (routeName == "index") return "Home";
      else {
        let words = routeName.split("-"),
          label = "";
        for (let w = 0; w < words.length; w++) {
          words[w] = words[w].charAt(0).toUpperCase() + words[w].substring(1);
          if (words[w] == "And") words[w] = "&";
        }

        return words.join(" ");
      }
    },
    toggleNav() {
      this.isMobileListVisible = !this.isMobileListVisible;
    },
  },
});
</script>

<template>
  <div>
    <nav class="larger-nav">
      <NuxtLink
        v-for="(route, r) in navigationItems"
        :key="r"
        :to="route.path"
        >{{ createLabel(route.name) }}</NuxtLink
      >
    </nav>
    <i @click="toggleNav()"
      ><svg style="width: 24px; height: 24px" viewBox="0 0 24 24">
        <path
          fill="currentColor"
          d="M3,6H21V8H3V6M3,11H21V13H3V11M3,16H21V18H3V16Z"
        />
      </svg>
      <span>Navigation</span></i
    >
    <nav v-show="isMobileListVisible" class="list-nav">
      <NuxtLink
        v-for="(route, r) in navigationItems"
        :key="r"
        :to="route.path"
        >{{ createLabel(route.name) }}</NuxtLink
      >
    </nav>
  </div>
</template>

<style scoped>
nav {
  display: flex;
  align-items: center;
  height: 100%;
  flex-wrap: wrap;
}
nav.larger-nav {
  display: flex;
}
i {
  display: none;
}
@media screen and (max-width: 768px) {
  nav.larger-nav {
    display: none;
  }
  i {
    display: flex;
    align-items: center;
    cursor: pointer;
  }
  i svg {
    margin-right: 5px;
  }
  nav.list-nav a {
    width: 100%;
  }
}
</style>