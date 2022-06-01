<script lang="ts">
import Vue from "vue";

import ImageFigure from "~/components/global/ImageFigure.vue";
import PrimaryButton from "~/components/PrimaryButton.vue";

const FORM_URL =
  "https://www.iatspayments.com/AURA/AURA.aspx?PID=PA2FA86495504CFB8F";

export default Vue.extend({
  name: "GiftShopPage",
  layout: "info",
  components: { ImageFigure, PrimaryButton },
  mounted() {
    let s: HTMLScriptElement = document.createElement("script");
    s.setAttribute("type", "text/javascript");
    s.setAttribute("src", FORM_URL);
    (this.$refs.formEmbed as HTMLDivElement).appendChild(s);
  },
});
</script>

<template>
  <div>
    <h1>Gift Shop</h1>
    <p>
      Browse our gifts and memorabilia for the Monroe Street Cemetery All
      purchases go toward the Monroe Street Cemetery Foundation.
    </p>
    <div class="columns2">
      <section>
        <h2>T-Shirts</h2>
        <p>
          Be the first one on your block to own one!! Amaze your friends,
          astound your relatives, make everybody jealous that they don’t have
          one. (But be sure and tell them how they can get one – we need the
          money!!!)
        </p>
        <p>
          Tees are available in M, L, XL and 2XL. Cost is $20.00 + $2.50 S&H
          each.
        </p>
        <img src="~/assets/images/gift-shop/MSCF-T-Shirt-front.png" />
        <img src="~/assets/images/gift-shop/MSCF-T-Shirt-back.png" />

        <h2>Get out your reading glasses!</h2>
        <p>
          For you history buffs or if you just want to know more about Monroe
          Street Cemetery and persons at rest there, we have assembled a
          collection of fifty brief biographies and a lot of other interesting
          stuff about Ohio City, the cemetery, Cleveland and life in the
          Victorian Era.
        </p>
        <p>
          The biographies contained on this website under history are stories
          taken directly from the book. A black and white edition is available
          for $25.00. Please add $5.00 to your order for S&H.
        </p>
        <img src="~/assets/images/gift-shop/book.png" />
      </section>
      <section>
        <h2>Dress up that blank spot on your wall</h2>
        <p>
          Color photographs of Monroe Street Cemetery are available. These are
          5″ x 7″ photos, matted and framed. Select from those shown below. Cost
          is $20.00 + $2.50 S&H each.
        </p>
        <ImageFigure
          src="images/gift-shop/GAR-Monument.png"
          caption="The G.A.R. Monument erected in 1872 and surrounded by the graves of 22 Civil War soldiers."
          size="large"
        />
        <ImageFigure
          src="images/gift-shop/Late-one-summer-afternoon.png"
          caption="Late one summer afternoon."
          size="large"
        />
        <ImageFigure
          src="images/gift-shop/Iron-gate-at-entrance.png"
          caption="The iron gate at the cemetery entrance archway."
          size="large"
        />
      </section>
    <section>
      <h2>Order online:</h2>
      <div ref="formEmbed"></div>
    </section>
    <section>
      <h3>Or:</h3>
      <PrimaryButton
        label="Download order form"
        url="/downloads/MSCF-gift-shop-order-form.doc"
      />
      <p>
        Write your selections on the order form, make your check out to Monroe
        Street Cemetery Foundation and mail it to the address: Monroe Street
        Cemetery Foundation P.O. BOX 93671, CLEVELAND, OHIO 44101 
      </p>
      <p>Please allow
        4-6 weeks for delivery.</p>
    </section>
    </div>
  </div>
</template>

<style scoped></style>
