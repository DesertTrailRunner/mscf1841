<script lang="ts">
import Vue from "vue";

import ImageFigure from "~/components/global/ImageFigure.vue";
import SocialMediaIcons from "~/components/SocialMediaIcons.vue";

export default Vue.extend({
  name: "VolunteerPage",
  layout: "default",
  head: {
    title: 'Volunteering for the Monroe Street Cemetery Foundation',
    meta: [
      {
        hid: 'description',
        name: 'The Foundation is seeking volunteers for a number of activities to help restore and beautify the cemetery.',
        content: ''
      }
    ]
  },
  components: { ImageFigure, SocialMediaIcons },
});
</script>

<template>
  <div>
    <h1>Volunteer</h1>

    <div class="columns2">
      <section>
        <p>
          If you’re interested in receiving news about the Monroe Street
          Cemetery and Foundation, or becoming involved, send us an email with
          your interests to: 
          <a href="mailto:info@mscf1841.org">info@mscf1841.org</a>
        </p>
        <h3>We are seeking volunteers for:</h3>
        <ul>
          <li>Genealogy and historical research</li>
          <li>Mapping - trees and monuments</li>
          <li>Monument restoration</li>
          <li>Help with fundraising events</li>
          <li>Tree and garden maintenance</li>
        </ul>
        
        <p>We meet at <a href="https://www.forestcitybrewery.com/" target="_blank">Forest City Brewery</a> on the second Wednesday of each month.</p>

        <SocialMediaIcons />
      </section>

      <section>
        <ImageFigure src="images/volunteer/2024.11.24-photo-mscf-volunteer_day-group_photo.jpg" caption="Volunteers restoring headstones" />
        <ImageFigure src="images/volunteer/IMG_2777.jpg" caption="Volunteers restoring headstones" />
        <ImageFigure src="images/volunteer/IMG_2741.jpg" caption="Volunteers restoring headstones" />
      </section>
    </div>
  </div>
</template>

