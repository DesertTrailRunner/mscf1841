<script lang='ts'>
/**
 * NewsItems
 * @date 2025-07-11
 * Format of news items:
   {
        "title": "",
        "url": "//eventbright.com/",
        "target": "_blank",
        "date": "June 12, 2022 2:00 - 4:00 pm",
        "duration": "2 hours",
        "summary": "<p></p>",
        "thumbnailUrl": "/images/news/image.jpg",
        "reverse": true|false
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
    openItem(newsItem: any) {
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
    <div class="news-item" v-for="(newsItem, n) in news" :key="n" :class="{ 'clickable': newsItem.url != '' }"
      @click="openItem(newsItem)">
      <div v-if="newsItem.thumbnailUrl" class="thumbnail">
        <img :src="newsItem.thumbnailUrl" :class="{ 'reverse': newsItem.reverse }" />
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
  border-bottom: 1px solid #aaa;
  padding-bottom: 10px;
  margin-bottom: 60px;
}

.thumbnail {
  max-width: 600px;
  overflow: hidden;
  margin-bottom: 10px;
}

.thumbnail img {
  object-fit: contain;
  object-position: top left;
  width: 100%;
  max-width: 400px;
}

img.reverse {
  filter: brightness(40%);
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
  background-color: lightyellow;
  border-left: 2px solid #aaa;
}

@media screen and (max-width: 768px) {
  .news-item {
    display: block;
  }
}
</style>