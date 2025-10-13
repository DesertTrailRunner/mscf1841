<script lang="ts">
/**
 * ImageLink
 * @date 2025-10-13
 */
import Vue, { PropOptions } from "vue";

interface ICompData {
}

export default Vue.extend({
    props: {
        src: String,
        caption: String,
        size: String,
        href: String
    },
    methods: {
        openLink() {
            if (this.href) window.open(this.href, "_blank");
        }
    }
});
</script>

<template>
    <figure @click="openLink">
        <h3>{{ caption }}</h3>
        <img :class="size" :src="require(`~/assets/${src}`)" :alt="caption" />
    </figure>
</template>

<style scoped>
figure {
    cursor: pointer;
}

figure h3,
figure img {
    transition: all .5s ease-in-out;
}

figure:hover img {
    transform: scale(1.05);
    transform-origin: 25%;
}

img.small {
    max-height: 100px;
    width: auto;
}

img.medium {
    max-height: 300px;
    width: auto;
    max-width: 100%;
}

img.large {
    max-height: 600px;
    width: auto;
    max-width: 100%;
}
</style>