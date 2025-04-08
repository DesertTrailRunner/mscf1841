<script lang="ts">
import Vue from "vue";
import PrimaryButton from "~/components/PrimaryButton.vue";

export default Vue.extend({
  name: "ZombieRunAndLurch",
  layout: "default",
  head: {
    title: "Zombie Run and Lurch",
    meta: [
      {
        hid: "description",
        name: "description",
        content: "Zombie Run and Lurch",
      },
    ],
  },
  components: {},
});
</script>

<template>
  <div>

    <div class="columns2">
      <div>
        <p><img src="~/assets/images/zombie/Zombie-run_large.png" alt="Zombie Run and Lurch logo" style="width:100%;"/></p>
        <h2>To benefit the Monroe Street Cemetery Foundation</h2>
        <h3>Sunday, September 21, 2025 9:00 am</h3>
        <h4>Clark Field, Cleveland, OH 44113</h4>
            <p>Join us for an exciting run or walk along the Towpath Trail starting at Clark Field in Tremont.
          Dress up as a Zombie or put on your scariest outfit!
        </p>
        <p>You'll be supporting an all-volunteer organization that is actively working to preserve and enhance the historic
          cemetery grounds, plant and maintain trees, repair headstones, monuments and burial structures.</p>
        <PrimaryButton label="Register for run or walk"
          url="https://runsignup.com/Race/OH/Cleveland/ZombieRunandLurch" />
        <p>
          Monroe Street Cemetery is the resting place for local political and business leaders, safety forces, veterans
          and many others who built Cleveland and its communities. There are more than 34,000 stories in this beautiful
          13-acre open space, which is also a refuge for birds and wildlife, and provides tree-covered walking paths for
          the community to enjoy.
        </p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.sponsors {
  background-color: #57585b;
  padding: 20px;
  color: #fff;
}
.sponsors h2 {
  display: flex;
  justify-content: center;
}
.sponsors>div {
  display: flex;
  justify-content: center;
  margin-bottom: 20px;
}
.sponsors img.logo {
  max-width: 300px;
}
</style>
