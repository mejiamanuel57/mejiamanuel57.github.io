<template>
  <div
    class="flex flex-col bg-cover bg-center items-center text-center text-white pt-24 pb-64 px-5"
    :style="{ backgroundImage: 'url(' + require('@/assets/images/background.jpg') + ')' }"
  >
    <img class="h-64 mx-auto rounded-full" src="@/assets/images/photo.jpg" />
    <p class="text-6xl">Hello, I'm Manuel.</p>
    <p class="md:w-9/12 text-2xl mb-10">
      I'm a Software Engineer/Consultant, currently helping to build web apps with
      <a class="font-bold hover:text-green-400" target="_blank" href="https://vuejs.org/">Vue.js💚.</a>
      I like to work on new projects following good practices and using top-notch technologies. In my spare time, I like
      to blog and create tutorials. Also, I'm a co-host of a dev podcast,
      <a class="font-bold hover:text-green-400" target="_blank" href="https://linktr.ee/ligadelcodigo"
        >@LigaDelCodigo.</a
      >.
    </p>
    <div class="flex flex-row">
      <a class="mr-4 hover:text-green-700" color="red" href="https://github.com/mejiamanuel57" target="_blank">
        <IconGithub class="fill-current" height="32" width="32" />
      </a>
      <a class="ml-4 hover:text-green-700" href="https://twitter.com/mejiamanuel57" target="_blank">
        <IconTwitter class="fill-current" height="32" width="32" />
      </a>
    </div>
  </div>
</template>

<script>
import { IconGithub, IconTwitter } from '../assets/icons'
export default {
  components: { IconGithub, IconTwitter }
}
</script>
