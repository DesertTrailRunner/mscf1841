<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "MembershipPage",
  layout: "info",
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
      </section>

      <section>
        <SocialMediaIcons />
      </section>
      <div>
        <img
          class="feature-image"
          src="~/assets/images/MSCF_committee-high-res.jpg"
        />
      </div>
    </div>
  </div>
</template>

