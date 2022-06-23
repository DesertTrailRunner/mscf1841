<script lang="ts">
import Vue from "vue";

import SocialMediaIcons from "~/components/SocialMediaIcons.vue";
import NewsItems from "~/components/NewsItems.vue";
import BiographyThumbnail from "~/components/BiographyThumbnail.vue";
import FoundationActivities from "~/components/FoundationActivities.vue";

export default Vue.extend({
  name: "IndexPage",
  layout: "default",
  head: {
    title: "Monroe Street Cemetery Foundation",
    meta: [
      {
        hid: "description",
        name: "description",
        content: "",
      },
    ],
  },
  components: { SocialMediaIcons, NewsItems, BiographyThumbnail, FoundationActivities },
  async asyncData({ $content, params }) {
    const bios = await $content("bios")
      .only([
        "title",
        "slug",
        "thumbnailUrl",
        "last",
        "category",
        "path",
        "pubdate",
      ])
      .sortBy("pubdate", "desc")
      .limit(4)
      .fetch();

    return {
      bios,
    };
  },
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
            <FoundationActivities/>
          </section>
        </div>
        <div>
          <h3>Recently published biographies</h3>
          <div class="biographies">
            <BiographyThumbnail v-for="(bio, b) in bios" :key="b" :bio="bio" />
          </div>
          <SocialMediaIcons />
        </div>
        <div>
          <ImageFigure
            src="images/home/Alex_Heeter_P8090310.jpg"
            caption="Photo courtesy of Alex Heeter"
          />
        </div>
        <div>
          <ImageFigure
            src="images/home/Alex_Heeter_P8090383.jpg"
            caption="Photo courtesy of Alex Heeter"
          />
        </div>
      </div>
    </section>
  </div>
</template>
