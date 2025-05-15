<script lang="ts">
import Vue from "vue";

import FoundationActivities from "~/components/FoundationActivities.vue";

export default Vue.extend({
  name: "AboutPage",
  layout: "default",
  head: {
    title: "About the Monroe Street Cemetery Foundation",
    meta: [
      {
        hid: "description",
        name: "description",
        content: "Mission Statement",
      },
    ],
  },
  components: { FoundationActivities },
});
</script>

<template>
  <div>
    <h1>About The Monroe Street Cemetery Foundation</h1>
    <h2>Mission Statement</h2>

    <div class="columns2">
      <div>
        <p>
          The Monroe Street Cemetery Foundation, a 501(c)(3) nonprofit, all
          volunteer organization was established to preserve and enhance the
          historic cemetery grounds, headstones, monuments and burial structures
          located at 3207 Monroe Avenue, Cleveland, Ohio, as well as providing
          educational opportunities for the general public and other public
          awareness activities.
        </p>

        <ImageFigure
          src="images/about/cmte-at-forest-city-brewery.jpg"
          caption="Foundation Committee Monthly Meeting at Forest City Brewery"
        />

        <div class="board-members">
          <h3>Board of Directors</h3>
        <div><span>Toni Morgan</span><span>President, Board Member</span></div>
        <div><span>Lesley Patterson</span><span>Vice-President, Board Member</span></div>
        <div><span>Alan Fodor</span><span>Treasurer, Co-Founder, Board Member</span></div>
        <div><span>Sean Koltiska</span><span>Secretary, Board Member</span></div>
        <div><span>William Krejci</span><span>Board Member</span></div>
        <div><span>Ben Hoffmann</span><span>Board Member</span></div>
        <div><span>Lesa Hess</span><span>Co-Founder, Board Member</span></div>
        <div><span>George Hruby</span><span>Board Member</span></div>
        <div><span>Glen Zdolshek</span><span>Board Member</span></div>
        <div><span>Hayden Bish</span><span>Board Member</span></div>
        <div><span>Homer Taft</span><span>President Emeritus</span></div>
        <div><span>Adam Saurwein</span><span>President Emeritus</span></div>
        </div>
      </div>

      <div>
        <p>
          The Foundation was instrumental in getting the City to rebuild the
          collapsed, historic Gatehouse. We are currently involved in the
          following and welcome your help!
        </p>
        <FoundationActivities />
      </div>
      <div>
        <h3>Foundation contact information</h3>
        <p>P.O. BOX 93671, CLEVELAND, OHIO 44101</p>
        <p>216-202-4872</p>
        <p>
          <a href="mailto:info@mscf1841.org">info@mscf1841.org</a>
        </p>
        <h3>Cemetery location</h3>
        <p>
          <a href="https://goo.gl/maps/4wk6SS6rBB8pHhPS8" target="map"
            >3207 Monroe Ave, Cleveland, OH 44113</a
          >
        </p>
        <h3>Status</h3>
        <p>
          The Monroe Street Cemetery Foundation is an Ohio Corporation with
          Federal Employer Identification Number 26-1792248.
        </p>
      </div>
      <div>
        <ImageFigure
          src="images/about/MSCF-Regrow-illustration-full-res.jpg"
          caption="Gatehouse Illustration by Jill Collins"
        />
      </div>
    </div>
  </div>
</template>

<style scoped>
.board-members div {
  display: grid;
  grid-template-columns: 1fr 2fr;
  width: 100%;
}
</style>
