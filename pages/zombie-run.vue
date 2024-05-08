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
    <img src="~/assets/images/zombie/zombie-run-logo.png" alt="Zombie Run and Lurch" style="width:100%; max-width:600px;"/>
    <h2>5k run and 1 mile fun walk to benefit the Monroe Street Cemetery Foundation</h2>
    <h3>Sunday, September 22, 2024 9:00 am</h3>
    <h4>3207 Monroe Ave, Cleveland, OH 44113</h4>

    <div class="columns2">
      <div>
        <p>Join us for a unique and exciting run or walk through the historic Monroe Street Cemetery and <a
            href="https://www.clevelandmetroparks.com/parks/visit/parks/ohio-erie-canal-reservation/red-line-greenway"
            target="_blank">Cleveland Metroparks Red Line Greenway</a> in Ohio City's South of Lorain neighborhood.
          Dress up as a Zombie or put on your scariest outfit!
        </p>
        <p>The course is fast, flat, and shady. You'll experience two of the largest greenspaces in the area, and be
          supporting an all-volunteer organization that is actively working to preserve and enhance the historic
          cemetery grounds, plant and maintain trees, repair headstones, monuments and burial structures.</p>
        <PrimaryButton label="Register for run or walk"
          url="https://runsignup.com/Race/OH/Cleveland/ZombieRunandLurch" />
        <p><img src="~/assets/images/zombie/Zombie-run_medium.png" alt="Zombie Run and Lurch logo" style="width:316px;"/></p>
        <p>
          Monroe Street Cemetery is the resting place for local political and business leaders, safety forces, veterans
          and many others who built Cleveland and its communities. There are more than 34,000 stories in this beautiful
          13-acre open space, which is also a refuge for birds and wildlife, and provides tree-covered walking paths for
          the community to enjoy.
        </p>
      </div>

      <div class="sponsors">
        <h2>Sponsors</h2>
        <div><img src="~/assets/images/zombie/sponsors/midstate-logo1a.png" alt="Mid State Restoration" style="width:300px"/></div>
        <div><img src="~/assets/images/zombie/sponsors/strange-n-spooky-haunted-tours-of-cleveland-logo-with-text.webp" alt="Strange & Spooky Haunted Tours" /></div>
      </div>
    </div>
  </div>
</template>

<style scoped></style>
