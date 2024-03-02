<script lang='ts'>
/**
 * NewsItems
 * @date 2024-03-02
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
    <h2 v-if="news && news.length">Upcoming Events</h2>
    <div class="news-item" v-for="(newsItem, n) in news" :key="n" :class="{'clickable':newsItem.url!=''}" @click="openItem(newsItem)">
      <div v-if="newsItem.thumbnailUrl" class="thumbnail">
        <img :src="newsItem.thumbnailUrl" />
      </div>
      <div>
        <h3>{{ newsItem.title }}</h3>
        <p>{{ newsItem.date }}</p>
        <div v-html="newsItem.summary" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.news-item {
  display: block;
  margin-bottom: 30px;
}
.thumbnail {
  max-width: 400px;
  height: 200px;
  overflow: hidden;
}
.thumbnail img {
  object-fit: contain;
  width: 100%;
  height: 100%;
}
.news-item h3 {
  margin: 0;
  font-weight: bold;
}
.clickable {
  cursor: pointer;
  border-left: 2px solid transparent;
}
.clickable:hover {
  background-color:lightyellow;
  border-left: 2px solid #aaa;
}
@media screen and (max-width: 768px) {
  .news-item {
    display: block;
  }
}
</style>