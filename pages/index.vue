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
          <div>
            <p>
              Monroe Street Cemetery Foundation is a 501(c)(3) nonprofit,
              all-volunteer organization dedicated to the preservation and
              enhancement of the oldest public cemetery on Cleveland's west
              side.
            </p>
          </div>
          <div>
            <NewsItems url="/data/news.json" />
          </div>
          <FoundationActivities />
        </div>
        <div>
          <div class="thank-you">
            <p>A special thank you for support from:</p>
            <ImageFigure src="images/coffins/sponsors/Goldies.webp" caption="Goldie's Donuts" size="medium" />
            <ImageFigure src="images/zombie/sponsors/Bookhouse.png" caption="Bookhouse Brewing" size="medium" />
          </div>
          <div class="article-ref">
            <a href="https://www.cleveland.com/news/2024/06/revolutionary-war-soldiers-19th-century-politicians-and-more-share-their-stories-from-the-grave-at-monroe-street-cemetery.html"
              target="_blank">
              <img
                src="https://www.cleveland.com/resizer/v2/M3E2ATXHW5BM7EF2HS7JH3MF3U.jpg?auth=f5d4486b4bd52831218716302a0422f5ebc818b035081f0bf9392b6832306a60&width=1280&quality=90"
                alt="An actor tells the story of Sofia Lord" />
              <p> Revolutionary War soldiers, 19th century politicians and more share their stories from the grave at
                Monroe Street Cemetery &mdash; cleveland.com
              </p>
            </a>
          </div>
          <p>We have a new email: <a href="mailto:info@mscf1841.org">info@mscf1841.org</a></p>
          <!-- <h3>Recently published biographies</h3>
          <div class="biographies">
            <BiographyThumbnail v-for="(bio, b) in bios" :key="b" :bio="bio" />
          </div> -->
          <SocialMediaIcons />
        </div>
        <div>
          <ImageFigure src="images/home/Alex_Heeter_P8090310.jpg" caption="Photo courtesy of Alex Heeter" />
        </div>
        <div>
          <ImageFigure src="images/home/Alex_Heeter_P8090383.jpg" caption="Photo courtesy of Alex Heeter" />
        </div>
      </div>
    </section>
  </div>
</template>

<style>
.article-ref {
  width: 400px;
}

.article-ref img {
  width: 100%;
  display: block;
}
.article-ref p {
  margin: 0;
}
</style>