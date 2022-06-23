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
      <section>
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
      </section>

      <section>
        <p>
          The Foundation was instrumental in getting the City to rebuild the
          collapsed, historic Gatehouse. We are currently involved in the
          following and welcome your help!
        </p>
        <FoundationActivities />
      </section>
      <section>
        <h3>Foundation contact information</h3>
        <p>P.O. BOX 93671, CLEVELAND, OHIO 44101</p>
        <p>216-272-9806</p>
        <p>
          <a href="mailto:mscf3207@att.net">mscf3207@att.net</a>
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
      </section>
      <div>
        <ImageFigure
          src="images/about/MSCF-Regrow-illustration-full-res.jpg"
          caption="Gatehouse Illustration by Jill Collins"
        />
      </div>
    </div>
  </div>
</template>

<style scoped></style>
