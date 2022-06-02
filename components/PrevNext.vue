<script>
/**
 * PrevNext
 * @date 2022-06-02
 */

export default {
  props: {
    prev: {
      type: Object,
      default: () => null,
    },
    next: {
      type: Object,
      default: () => null,
    },
  },
};
</script>


<template>
  <div class="navigation-buttons">
    <NuxtLink
      v-if="prev"
      :to="{ path: prev.path }"
      class="font-bold text-primary hover:underline"
    >
      {{ prev.title }}
    </NuxtLink>
    <span v-else>&nbsp;</span>
    <NuxtLink
      v-if="next"
      :to="{ path: next.path }"
      class="font-bold hover:underline"
    >
      {{ next.title }}
    </NuxtLink>
    <span v-else>&nbsp;</span>
  </div>
</template>
