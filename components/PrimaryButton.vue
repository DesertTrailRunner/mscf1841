<script lang='ts'>
/**
 * PrimaryButton Vue2
 * @date 2022-06-02
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
            else this.$emit("click");
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