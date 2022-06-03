<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "ResearchPage",
  layout: "default",
  head: {
    title: 'Headstone Research/Photos related to the Monroe Street Cemetery',
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
    <h1>Headstone Research/Photos</h1>
    <div class="columns2">
      <p>
        If you would like a photograph of a headstone at Monroe Street Cemetery
        email us at
        <a href="mailto:mscf3207@att.net">mscf3207@att.net</a>. Please provide
        the full name of the person you are interested in and their Section and
        Lot Number if you have it. In <NuxtLink to="/maps-and-records">Maps & Records</NuxtLink> you will find a link to the Cleveland Cemeteries
        Index where you may be able to find the Section and Lot Number.
        (Information on burials before 1860 is not available.) Headstone
        photographs are emailed to the requester and we do not charge for this
        service. We do, however, ask you to consider making a donation to our
        Foundation or becoming a member. Please allow 2-4 weeks for receipt of
        the photograph.
      </p>
      <p>
        The Foundation can provide limited genealogical research services in
        addition to headstone photographs. On-line and local sources can be
        researched and the information provided to you. We charge $25.00 per
        hour for research services plus any costs associated with the research
        such as photocopies or fees. A request for research services should be
        in writing and mailed to the address shown at the bottom of this page.
        Provide a telephone number or email address so that we may contact you.
        Once the research is complete an invoice will be sent to you and when
        payment is received, research documents will be mailed to you.
      </p>
    </div>
    <div class="columns3">
      <img src="~/assets/images/research/headstone1-768x1024.jpg" />
      <img src="~/assets/images/research/headstone3-768x479.jpg" />
      <img src="~/assets/images/research/headstone2-626x1024.jpg" />
    </div>
  </div>
</template>

<style scoped></style>
