<script lang='ts'>
/**
 * NewsItems
 * @date 2022-06-02
 */
import Vue, { PropOptions } from "vue";


export default Vue.extend({
    props: {
        url: { type: String, required: false }
    },
    data() {
        return {
            news: []
        }
    },
    
});
</script>

<template>
    <div class="news-items">
        <div class="news-item" v-for="(newsItem, n) in news" :key="n">
            <div>
                <h3>{{ newsItem.name }}</h3>
                <p>{{ newsItem.readableDate }}</p>
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
}
.news-item img {
    width: 100%;
}
.news-item h3 {
    margin: 0;
}
</style>