<script lang="ts">
import Vue from "vue";

import ImageFigure from "~/components/ImageFigure.vue";

export default Vue.extend({
  name: "MembershipPage",
  layout: "default",
  components: { ImageFigure },
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

        <h3>Activities might include:</h3>
        <ul>
          <li>Attending monthly meetings</li>
          <li>Helping with events</li>
          <li>Conduct walking tours</li>
          <li>Plant trees</li>
          <li>Help water and maintain plants</li>
          <li>Social media</li>
          <li>Monument restoration</li>
        </ul>
        <p><a href="https://www.facebook.com/MonroeStreetCemetery/jobs/">Opportunities</a> may be posted to our Facebook page as Jobs.</p>
        <p>We meet at Forest City Brewery on the second Wednesday of each month.</p>
      </section>

      <section>
        <!-- <SocialMediaIcons /> -->
      </section>
      <div>
        <ImageFigure src="images/membership/MSCF-members-2-med-res-768x595.jpg" caption="MSCF committee" />
        <ImageFigure src="images/membership/MSCF-members-1-med-res-768x567.jpg" caption="MSCF committee" />
      </div>
    </div>
  </div>
</template>

