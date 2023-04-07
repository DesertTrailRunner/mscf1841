<script lang="ts">
import Vue from "vue";

import ImageFigure from "~/components/global/ImageFigure.vue";
import SocialMediaIcons from "~/components/SocialMediaIcons.vue";

export default Vue.extend({
  name: "MembershipPage",
  layout: "default",
  head: {
    title: 'Membership and Volunteering for the Monroe Street Cemetery Foundation',
    meta: [
      {
        hid: 'description',
        name: 'description',
        content: ''
      }
    ]
  },
  components: { ImageFigure, SocialMediaIcons },
});
</script>

<template>
  <div>
    <h1>Membership and Volunteering</h1>

    <div class="columns2">
      <section>
        <p>
          If you’re interested in receiving news about the Monroe Street
          Cemetery and Foundation, or becoming involved, send us an email with
          your interests to: 
          <a href="mailto:mscf3207@att.net">mscf3207@att.net</a>
        </p>
        <p>We meet at <a href="https://www.forestcitybrewery.com/" target="_blank">Forest City Brewery</a> on the second Wednesday of each month.</p>

        <h3>Activities might include:</h3>
        <ul>
          <li>Attend monthly meetings</li>
          <li>Help with events</li>
          <li>Plant trees</li>
          <li>Help water and maintain plants</li>
          <li>Genealogy and historical research</li>
          <li>Social media</li>
          <li>Monument restoration</li>
          <li>Conduct walking tours</li>
        </ul>
        <p><a href="https://www.facebook.com/MonroeStreetCemetery/jobs/" target="facebook">Volunteer opportunities</a> may be posted to our Facebook page as Jobs.</p>
        
        <SocialMediaIcons />
      </section>

      <section>
        <ImageFigure src="images/membership/MSCF-members-2-med-res-768x595.jpg" caption="MSCF committee" />
        <ImageFigure src="images/membership/MSCF-members-1-med-res-768x567.jpg" caption="MSCF committee" />
      </section>
    </div>
  </div>
</template>

