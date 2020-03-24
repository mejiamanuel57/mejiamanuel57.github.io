<template>
  <div id="podcast" class="flex flex-col items-center bg-green-500 text-white pt-10 pb-20 px-5">
    <p class="text-4xl font-bold mb-10">Podcast 🎙️</p>
    <div class="flex flex-row flex-wrap mb-10">
      <iframe
        v-for="(episode, index) in youtubeEpisodes"
        :key="index"
        class="p-2"
        width="360"
        height="215"
        :src="episode"
        frameborder="0"
        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
      ></iframe>
    </div>

    <p class="text-base mb-5">Listen us on:</p>
    <div class="flex flex-row">
      <a
        v-for="(source, index) in podcastSources"
        :key="index"
        class="w-3/12 mx-4 md:mx-10 hover:text-green-700 text-center"
        :href="source.link"
        target="_blank"
      >
        <component :is="source.icon" class="fill-current" height="48" width="48" />
      </a>
    </div>
  </div>
</template>

<script>
import { IconApple, IconSpotify, IconStitcher, IconYoutube } from '../assets/icons'
export default {
  components: { IconApple, IconSpotify, IconStitcher, IconYoutube },
  data() {
    return {
      youtubeEpisodes: [
        'https://www.youtube.com/embed/gBfxHcn0AGU',
        'https://www.youtube.com/embed/HOa34_ZZyX4',
        'https://www.youtube.com/embed/5r4OCifACiU'
      ],
      podcastSources: [
        {
          name: 'Apple',
          icon: 'IconApple',
          link: 'https://podcasts.apple.com/se/podcast/liga-del-c%C3%B3digo/id1466444535'
        },
        { name: 'Spotify', icon: 'IconSpotify', link: 'https://open.spotify.com/show/5Mt46URr7FSpOrnrsunbdB' },
        { name: 'Stitcher', icon: 'IconStitcher', link: 'https://www.stitcher.com/podcast/liga-del-codigo' },
        {
          name: 'YouTube',
          icon: 'IconYoutube',
          link: 'https://www.youtube.com/channel/UCFnX4ibZN50jTU24NyVHBlQ/featured'
        }
      ]
    }
  }
}
</script>
