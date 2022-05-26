<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "CemeteryIndexPage",
  layout: "info",
});
</script>

<template>
  <div>
    <h1>Browse the City of Cleveland Cemetery Index</h1>

    <div class="columns2">
      <section>
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
      </section>
      <div>
        <PrimaryButton
          label="Cleveland Cemetery Index"
          url="http://usgenwebsites.org/OHCuyahoga/Cemeteries/clecems/00dexfind.html#mon"
        />
      </div>
    </div>
  </div>
</template>

<style scoped></style>
