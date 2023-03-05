<script lang='ts'>
/**
 * NewsItems
 * @date 2023-03-05
 * Format of news items:
   {
        "title": "",
        "url": "//eventbright.com/",
        "target": "_blank",
        "date": "June 12, 2022 2:00 - 4:00 pm",
        "duration": "2 hours",
        "summary": "<p></p>",
        "thumbnailUrl": "/images/news/image.jpg"
   }
 */
import Vue, { PropOptions } from "vue";

export default Vue.extend({
  props: {
    url: { type: String, required: false },
  },
  async fetch() {
    this.news = await this.$http.$get(this.url);
  },
  fetchOnServer: false,
  data() {
    return {
      news: [],
    };
  },
  methods: {
    openItem(newsItem:any) {
      if (newsItem && newsItem.url) {
        window.open(newsItem.url, newsItem.target);
      }
    }
  }
});
</script>

<template>
  <div class="news-items">
    <h2 v-if="news && news.length">News and Upcoming Events</h2>
    <div class="news-item" v-for="(newsItem, n) in news" :key="n">
      <div :class="{clickable:newsItem.url!=''}" @click="openItem(newsItem)">
        <h3>{{ newsItem.title }}</h3>
        <p>{{ newsItem.date }}</p>
        <div v-html="newsItem.summary" />
      </div>
      <div>
        <img v-if="newsItem.thumbnailUrl" :src="newsItem.thumbnailUrl" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.news-item {
  display: grid;
  grid-template-columns: 2fr 1fr;
  margin-bottom: 1em;
  grid-gap: 2em;
}
.news-item img {
  width: 100%;
}
.news-item h3 {
  margin: 0;
  font-weight: bold;
}
.clickable {
  cursor: pointer;
}
.clickable:hover {
  background-color:lightyellow;
}
@media screen and (max-width: 768px) {
  .news-item {
    display: block;
  }
}
</style>