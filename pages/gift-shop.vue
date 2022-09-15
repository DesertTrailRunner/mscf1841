<script lang="ts">
import Vue from "vue";

import ImageFigure from "~/components/global/ImageFigure.vue";
import PrimaryButton from "~/components/PrimaryButton.vue";

const FORM_URL =
  "https://www.iatspayments.com/AURA/AURA.aspx?PID=PA2FA86495504CFB8F";

export default Vue.extend({
  name: "GiftShopPage",
  layout: "info",
  head: {
    title: "Items to purchase to support the Monroe Street Cemetery Foundation",
    meta: [
      {
        hid: "description",
        name: "description",
        content: "",
      },
    ],
  },
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
      Browse our gifts and memorabilia for the Monroe Street Cemetery. Purchase
      online or order by mail. All purchases go toward the
      <NuxtLink to="/about"
        >Monroe Street Cemetery Foundation activities.</NuxtLink
      >
    </p>
    <div class="columns2">
      <section>
        <h2>Books</h2>
        <h4>Get out your reading glasses!</h4>
        <ImageFigure
          src="images/gift-shop/book.png"
          caption="Cemetery History Book"
          size="medium"
        />
        <h3>The Martha Washington Case</h3>
        <ImageFigure
          src="images/gift-shop/martha-washington-case.jpg"
          caption="The Martha Washington Case Book"
          size="medium"
        />
        <h3>Ripped from the Headlines</h3>
        <p>
          The eighteen stories included in this book have certain things in
          common. First the primary person(s) in each story is buried at Monroe
          Street Cemetery, Cleveland's oldest, west side public cemetery.
          Second, these stories were all recorded in local newspapers and some
          of them in national newspapers also. Third, each story deals with the
          death of one or more people. These stories represent a common problem
          of comeleries. We see a headstone, we see a name, we see dates, but we
          don't see the story.
        </p>
        <ImageFigure
          src="images/gift-shop/headlines.jpg"
          caption="Ripped from the Headlines Book"
          size="medium"
        />
        <p>
          For you history buffs or if you just want to know more about Monroe
          Street Cemetery and persons at rest there, we have assembled a
          collection of fifty brief biographies and a lot of other interesting
          stuff about Ohio City, the cemetery, Cleveland and life in the
          Victorian Era.
        </p>
        <h3>Cemetery History</h3>
        <p>
          The <NuxtLink to="/biographies">biographies</NuxtLink> are stories
          taken directly from the book. A black and white edition is available
          for $25.00. Please add $5.00 to your order for S&H.
        </p>
      </section>

      <section>
        <h2>Order online:</h2>
        <div ref="formEmbed"></div>
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
        <p>Please allow 4-6 weeks for delivery.</p>
      </section>

      <section>
        <h2>T-Shirts</h2>
        <p>
          Be the first one on your block to own one!! Amaze your friends,
          astound your relatives, make everybody jealous that they don’t have
          one.
        </p>
        <p>
          Tees are available in M, L, XL and 2XL. Cost is $20.00 + $2.50 S&H
          each.
        </p>
        <ImageFigure
          src="images/gift-shop/MSCF-T-Shirt-front.png"
          caption="T-shirt front"
          size="medium"
        />
        <ImageFigure
          src="images/gift-shop/MSCF-T-Shirt-back.png"
          caption="T-shirt back"
          size="medium"
        />
      </section>
      <section>
        <h2>Framed Photographs</h2>
        <h3>Dress up that blank spot on your wall</h3>
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
    </div>
  </div>
</template>

<style scoped></style>
