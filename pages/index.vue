<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "IndexPage",
  layout: "default",
});
</script>

<template>
  <div>
    <section class="hero"></section>
    <section>
      <h1>Monroe Street Cemetery</h1>
      <div class="columns2">
        <div>
          <section>
            <p>
              Monroe Street Cemetery Foundation is a 501(c)(3) nonprofit,
              all-volunteer organization dedicated to the preservation and
              enhancement of the oldest public cemetery on Cleveland's west
              side.
            </p>
          </section>
          <section>
            <h2>Latest news</h2>
            <!-- <NewsItems url="data/news.json" /> -->
          </section>
        </div>
        <div>
          <!-- <SocialMediaIcons /> -->
        </div>
        <div>
          <img
            class="feature-image"
            src="~/assets/images/home/Alex_Heeter_P8090310.jpg"
          />
        </div>
        <div>
          <img
            class="feature-image"
            src="~/assets/images/home/Alex_Heeter_P8090383.jpg"
          />
        </div>
      </div>
    </section>
  </div>
</template>
