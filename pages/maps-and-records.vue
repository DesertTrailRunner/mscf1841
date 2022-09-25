<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "MapPage",
  layout: "default",
  head: {
    title: 'Monroe Street Cemetery Map and Index of Records',
    meta: [
      {
        hid: 'description',
        name: 'description',
        content: ''
      }
    ]
  },
  data() {
    return {
      isMapVisible: false
    }
  }
});
</script>

<template>
  <div>
    <h1>Cemetery Map and Index of Records</h1>

    <div class="columns2">
      <section>
        <h3>Cemetery Map</h3>
        <p>
          To view the full resolution map of the cemetery, please
          click the image below:
        </p>
        <PrimaryButton
          label="View Map" @click="isMapVisible=true"
        />
        <ModalDialog v-model="isMapVisible" heading="Cemetery Map" width="90%" height="80%">
          <img src="~/assets/images/map/monroe-street-cemetery-map-scaled.jpg"
        />
        </ModalDialog>
      </section>
      <section>
        <h3>Cemetery Index of Records</h3>
        <p>
          The interment registers from the City of Cleveland Owned Cemeteries
          have been indexed from the beginning of their known records to the mid
          1990s when the records began to be computerized. Several years ago the
          LDS Church sent a crew to record the cemetery records. The East
          Cuyahoga Genealogical Society and many, many volunteers, under the
          direction of Vicki Vigil, digitized those records which can now be
          found at the website below. If you go searching for your loved one’s
          records without success please <NuxtLink to="/about">contact us</NuxtLink> so that we may assist you,
          if possible. Also please see <NuxtLink to="/research">
          genealogical research services and headstone photograph services</NuxtLink> that
          we may be able to provide for you.
        </p>
        <PrimaryButton
          label="Cleveland Cemetery Index"
          url="http://usgenwebsites.org/OHCuyahoga/Cemeteries/clecems/00dexfind.html#mon"
        />
        <p>Records from before 1863 are now available thanks to members of the Foundation.</p>
        <div><PrimaryButton label="Burials 1836-1863" url="https://docs.google.com/document/d/1q6duEHR4q84q0IzqVKaP_wdja_xHhLWz/edit?usp=sharing&ouid=100109147989278288547&rtpof=true&sd=true"/></div>
        <div><PrimaryButton label="Burials moved to Cemetery" url="https://docs.google.com/document/d/14hY1UaDgBvJq9pG_fgU9rcjtpGaRyCHu/edit?usp=sharing&ouid=100109147989278288547&rtpof=true&sd=true"/></div>
      </section>
    </div>
  </div>
</template>

<style scoped></style>
