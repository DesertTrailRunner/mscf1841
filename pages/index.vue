<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "IndexPage",
  layout: "info",
});
</script>

<template>
  <div>
    <section class="hero"></section>
    <div>
      <h1>Monroe Street Cemetery</h1>
      <v-row>
        <v-col cols="12" md="6">
          <p>
            Monroe Street Cemetery Foundation is a 501(c)(3) nonprofit,
            all-volunteer organization dedicated to the preservation and
            enhancement of the oldest public cemetery on Cleveland's west side.
          </p>
          <h2>Latest news</h2>
          <NewsItems url="data/news.json" />
        </v-col>
        <v-col cols="12" md="6">
          <SocialMediaIcons />
        </v-col>
        <v-col cols="12" md="6">
          <img
            class="feature-image"
            src="~/assets/images/Alex_Heeter_P8090310.jpg"
          />
        </v-col>
        <v-col cols="12" md="6">
          <img
            class="feature-image"
            src="~/assets/images/Alex_Heeter_P8090383.jpg"
          />
        </v-col>
      </v-row>
    </div>
  </div>
</template>
