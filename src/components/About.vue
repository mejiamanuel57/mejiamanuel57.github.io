<template>
  <div
    class="flex flex-col bg-cover bg-center items-center text-center text-white pt-12 md:pt-24 pb-64 px-5"
    :style="{ backgroundImage: 'url(' + require('@/assets/images/background.jpg') + ')' }"
  >
    <img alt="Manuel Mejia Jr." class="h-32 md:h-64 mx-auto rounded-full" src="@/assets/images/photo.jpg" />
    <p class="text-4xl md:text-6xl">Hello, I'm Manuel.</p>
    <p class="md:w-9/12 text-xl md:text-2xl mb-10">
      I’m a Software Engineer currently working as Tech Lead at
      <a class="font-bold hover:text-green-400" target="_blank" rel="noopener" href="https://www.buildinglink.com/">
        BuildingLink</a
      >. I like to work on new projects following good practices and using top-notch technologies. In my spare time, I
      enjoy sharing what I learn on my blog. Also, I'm a co-host of a dev podcast,
      <a class="font-bold hover:text-green-400" target="_blank" rel="noopener" href="https://linktr.ee/ligadelcodigo"
        >@LigaDelCodigo</a
      >.
    </p>
    <div class="flex flex-row">
      <a
        v-for="(profile, index) in profiles"
        :key="index"
        class="mx-6 hover:text-green-400"
        :aria-label="profile.name"
        :href="profile.link"
        target="_blank"
        rel="noopener"
      >
        <component :is="profile.icon" class="fill-current w-8 h-8" />
      </a>
    </div>
  </div>
</template>

<script>
import { IconTwitter, IconGithub, IconLinkedin, IconStackoverflow } from '../assets/icons'
export default {
  components: {
    IconTwitter,
    IconGithub,
    IconLinkedin,
    IconStackoverflow
  },
  data() {
    return {
      profiles: [
        {
          name: 'Manuel Mejia Jr. - Twitter',
          icon: 'IconTwitter',
          link: 'https://twitter.com/mejiamanuel57'
        },
        {
          name: 'Manuel Mejia Jr. - GitHub',
          icon: 'IconGithub',
          link: 'https://github.com/mejiamanuel57'
        },
        {
          name: 'Manuel Mejia Jr. - Stack Overflow',
          icon: 'IconStackoverflow',
          link: 'https://stackoverflow.com/users/2958543/mejiamanuel57?tab=profile'
        },
        {
          name: 'Manuel Mejia Jr. - LinkedIn',
          icon: 'IconLinkedin',
          link: 'https://www.linkedin.com/in/mejiamanuel57/'
        }
      ]
    }
  }
}
</script>
