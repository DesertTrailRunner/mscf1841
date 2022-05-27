<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "MapPage",
  layout: "default",
});
</script>

<template>
  <div>
    <h1>Cemetery Map</h1>

    <div class="columns2">
      <section>
        <p>
          To view or download the full resolution map of the cemetery, please
          click the image below:
        </p>
        <a
          href="../static/images/monroe-street-cemetery-map-scaled.jpg"
          target="map"
          ><img src="~/assets/images/monroe-street-cemetery-map-scaled.jpg"
        /></a>
      </section>
    </div>
  </div>
</template>

<style scoped></style>
