<script lang="ts">
import Vue from "vue";
// import PayPalDonation from "~/components/PayPalDonation.vue";
import PrimaryButton from "~/components/PrimaryButton.vue";

const FORM_URL =
  "https://www.iatspayments.com/AURA/AURA.aspx?PID=PA55556718625B6EDC";

export default Vue.extend({
  name: 'DonationsPage',
  components: { PrimaryButton },
  layout: 'info',
  head: {
    title: 'Donate to the Monroe Street Cemetery Foundation',
    meta: [
      {
        hid: 'description',
        name: 'description',
        content: ''
      }
    ]
  },
  mounted() {
    let s: HTMLScriptElement = document.createElement("script");
    s.setAttribute("type", "text/javascript");
    s.setAttribute("src", FORM_URL);
    (this.$refs.formEmbed as HTMLDivElement).appendChild(s);
  }
});
</script>

<template>
  <div>
    <h1>Donate</h1>
    <div class="columns2">
      <section>
        <h2>It’s what keeps us going!</h2>
        <p>
          Monroe Street Cemetery Foundation is a 501(c)(3) nonprofit
          organization. Everyone who serves the Foundation on its Board of
          Directors and its Planning Committee is a volunteer. To the greatest
          degree possible we seek pro bono assistance when it is necessary to go
          beyond our membership.
        </p>
        <p>
          To preserve and enhance the cemetery and to provide educational and
          fund-raising programs the Foundation needs your help. Donations of any
          amount are welcomed and all donations are tax-deductible.
        </p>
        <p>
          Inquiries regarding donations, membership or any other aspect of the
          organization should be sent to the below snail mail address or emailed
          to
          <a href="mailto:info@mscf1841.org">info@mscf1841.org</a>.
        </p>
        <p>P.O. BOX 93671, CLEVELAND, OHIO 44101</p>
        <p>Our thanks in advance for your financial help.</p>
        <p><i>We offer multiple methods of donating: PayPal or the online form below.</i></p>
        <p>
          <PrimaryButton label="Donate via PayPal" url="https://www.paypal.com/paypalme/monroecemetery" />
        </p>
      </section>
      <div>
        <img class="sidebar-image" src="~/assets/images/donations/Tree-headstone-20210818.jpg" />
      </div>
    </div>
    <section ref="formEmbed"></section>
  </div>
</template>

<style scoped>

</style>
