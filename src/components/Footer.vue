<template>
  <div class="flex flex-wrap justify-center text-green-700 p-5">
    <p>
      © {{ currentYear }} Manuel Mejia Jr. Made with
      <a class="font-bold hover:text-green-400" href="https://vuejs.org/">Vue.js</a> +
      <a class="font-bold hover:text-green-400" href="https://tailwindcss.com/">Tailwind CSS</a>
    </p>
  </div>
</template>

<script>
export default {
  data() {
    return { currentYear: new Date().getFullYear() }
  }
}
</script>
