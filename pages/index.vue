<script lang="ts">
import Vue from "vue";

import SocialMediaIcons from "~/components/SocialMediaIcons.vue";
import NewsItems from "~/components/NewsItems.vue";

export default Vue.extend({
  name: "IndexPage",
  layout: "default",
  head: {
    title: 'Monroe Street Cemetery Foundation',
    meta: [
      {
        hid: 'description',
        name: 'description',
        content: ''
      }
    ]
  },
  components: { SocialMediaIcons, NewsItems },
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
            <NewsItems url="/data/news.json" />
          </section>
        </div>
        <div>
          <SocialMediaIcons />
        </div>
        <div>
          <ImageFigure src="images/home/Alex_Heeter_P8090310.jpg" caption="Photo courtesy of Alex Heeter"/>
        </div>
        <div>
          <ImageFigure src="images/home/Alex_Heeter_P8090383.jpg" caption="Photo courtesy of Alex Heeter"/>
        </div>
      </div>
    </section>
  </div>
</template>
