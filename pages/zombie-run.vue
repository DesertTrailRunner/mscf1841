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
        <p><img src="~/assets/images/zombie/Zombie-run_large.png" alt="Zombie Run and Lurch logo" style="width:100%;" />
        </p>
        <h2>To benefit the Monroe Street Cemetery Foundation</h2>
        <h3>Sunday October 12, 2025 9:00 am</h3>
        <h4>Clark Field, Cleveland, OH 44113</h4>
        <p>Join us for an exciting run or walk along the Towpath Trail starting at Clark Field in Tremont. Dress up as a
          Zombie or put on your scariest outfit! You'll be supporting an all-volunteer 501(c)(3) nonprofit organization
          that is actively working to preserve and enhance the historic cemetery grounds, plant and maintain trees,
          repair headstones,
          monuments and burial structures. In just the past few years, The Monroe Street Cemetery Foundation has:</p>
        <ul>
          <li>Planted 62 trees</li>
          <li>Became an Accredited arboretum</li>
          <li>Uncovered and restored 65 headstones</li>
          <li>Restored 1 mausoleum (4 more in need)</li>
          <li>Written 4 books about those buried in the cemetery</li>
          <li>Planted 10 gardens including 2 polenator gardens</li>
          <li>Installed 21 information signs throughout the cemetery</li>
          <li>Put in about 2000 volunteer hours per year</li>
        </ul>
        <PrimaryButton label="Register for run or walk"
          url="https://runsignup.com/Race/OH/Cleveland/ZombieRunandLurch" />
        <p>
          Monroe Street Cemetery is the resting place for local political and business leaders, safety forces, veterans
          and many others who built Cleveland and its communities. There are more than 34,000 stories in this beautiful
          13-acre open space, which is also a refuge for birds and wildlife, and provides tree-covered walking paths for
          the community to enjoy.
        </p>
        <p>The Towpath Trail in Cleveland, Ohio, meanders near Sokolowski's Overlook, offering scenic views of the
          city's industrial heartland and the Cuyahoga River. The Towpath Trail provides a blend of historical context
          and scenic views of Cleveland's industrial riverfront. It serves as a key access point to explore both the
          northern and southern sections of the trail within the city.</p>
        <ImageFigure src="images/zombie/route-photos/roundhouse.jpg" caption="" />
        <ImageFigure src="images/zombie/route-photos/mound.jpg" caption="" />
        <ImageFigure src="images/zombie/route-photos/joe-ramirez-scoreboard.jpg" caption="" />
        <ImageFigure src="images/zombie/route-photos/path-width-bridge.jpg" caption="" />
        <ImageFigure src="images/zombie/route-photos/jackknife-bridge.jpg" caption="" />
        <ImageFigure src="images/zombie/route-photos/w-6-with-houses.jpg" caption="" />
        <ImageFigure src="images/zombie/route-photos/train-stop.jpg" caption="" />

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
