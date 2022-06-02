<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "AboutPage",
  layout: "default",
  head: {
    title: 'About the Monroe Street Cemetery Foundation',
    meta: [
      {
        hid: 'description',
        name: 'description',
        content: 'Mission Statement'
      }
    ]
  }
});
</script>

<template>
  <div>
    <h1>About The Monroe Street Cemetery Foundation</h1>
    <h2>Mission Statement</h2>

    <div class="columns2">
      <section>
        <p>
          The Monroe Street Cemetery Foundation, a 501(c)(3) nonprofit, all
          volunteer organization was established to preserve and enhance the
          historic cemetery grounds, headstones, monuments and burial structures
          located at 3207 Monroe Avenue, Cleveland, Ohio, as well as providing
          educational opportunities for the general public and other public
          awareness activities.
        </p>

        <p>
          The City of Cleveland must maintain Monroe Street Cemetery (one of
          twelve cemeteries operated by the City of Cleveland), but is
          financially unable to maintain and preserve it adequately. In order to
          assist the City of Cleveland with its burden with respect to
          maintaining the cemetery, concerned citizens formed the Foundation.
          The Foundation will work to preserve its historic significance, share
          in some responsibilities for the maintenance of the grounds, and
          assist the City of Cleveland in obtaining funding for improvements to
          structures and features of the Cemetery.
        </p>

        <ImageFigure src="images/about/cmte-at-forest-city-brewery.jpg" caption="Foundation Committee Monthly Meeting at Forest City Brewery"/>
      </section>

      <section>
        <p>
          Specifically, the Foundation will dedicate its resources to the
          following:
        </p>

        <ol>
          <li>
            The Foundation will assist the City of Cleveland in landscaping the
            grounds of the Cemetery.
          </li>
          <li>
            The Foundation will preserve and enhance the Cemetery by operating
            programs for restoration of damaged headstones and mausoleums. The
            Foundation will work to improve the conditions of the burial plots
            so that family members and the general public may safely visit the
            historically significant burial sites at the Cemetery.
          </li>
          <li>
            The Foundation will also preserve the rich history of the pioneers
            of the City of Cleveland, Cuyahoga County, State of Ohio and its
            nation through research and education of the public.
          </li>
          <li>
            The Foundation will provide limited research and photograph services
            to persons with loved ones buried in the cemetery and/or persons
            doing genealogical research about persons buried in the cemetery.
          </li>
          <li>
            The Foundation will take part in community activities that will
            promote the historic and cultural values of the Ohio City Historic
            Districts.
          </li>
        </ol>

        <p>
          The Monroe Street Cemetery Foundation is an Ohio Corporation with
          Federal Employer Identification Number 26-1792248.
        </p>
      </section>
      <section>
        <h3>Contact information</h3>
        <p>P.O. BOX 93671, CLEVELAND, OHIO 44101</p>
        <p>216-272-9806</p>
        <p>
          <a href="mailto:mscf3207@att.net">mscf3207@att.net</a>
        </p>
      </section>
      <div>
        <ImageFigure src="images/about/MSCF-Regrow-illustration-full-res.jpg" caption="Gatehouse Illustration by Jill Collins"/>
      </div>
    </div>
  </div>
</template>

<style scoped></style>
