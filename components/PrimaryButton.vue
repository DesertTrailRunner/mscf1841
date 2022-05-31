<script lang='ts'>
/**
 * PrimaryButton
 * @date 2022-05-31
 */
import Vue, { PropOptions } from "vue";

export default Vue.extend({
    props: {
        label: String,
        url: String
    },
    methods: {
        go() {
            if (this.url) window.open(this.url, "_blank");
        }
    }
});
</script>

<template>
    <button class="cta" @click="go">
        <span class="circle" aria-hidden="true">
            <span class="icon arrow"></span>
        </span>
        <span class="button-text">{{ label }}</span>
    </button>
</template>

<style scoped>
</style>