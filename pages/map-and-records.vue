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
});
</script>

<template>
  <div>
    <h1>Cemetery Map and Index of Records</h1>

    <div class="columns2">
      <section>
        <h3>Cemetery Map</h3>
        <p>
          To view or download the full resolution map of the cemetery, please
          click the image below:
        </p>
        <a
          href="~/assets/images/map/monroe-street-cemetery-map-scaled.jpg"
          target="map"
          ><img src="~/assets/images/map/monroe-street-cemetery-map-scaled.jpg"
        /></a>
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
          found at the website below. Records at Monroe Street Cemetery are not
          available from before 1860. If you go searching for your loved one’s
          records without success please contact us so that we may assist you,
          if possible. Also please see the SERVICES & PRODUCTS menu for
          genealogical research services and headstone photograph services that
          we may be able to provide for you.
        </p>
        <PrimaryButton
          label="Cleveland Cemetery Index"
          url="http://usgenwebsites.org/OHCuyahoga/Cemeteries/clecems/00dexfind.html#mon"
        />
      </section>
    </div>
  </div>
</template>

<style scoped></style>
