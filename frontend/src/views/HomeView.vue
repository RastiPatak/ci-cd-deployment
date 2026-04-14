<script setup>
import TheWelcome from '../components/TheWelcome.vue'

import { ref, onMounted } from "vue";

const message = ref("");

onMounted(async () => {
  const res = await fetch("https://ci-cd-deployment-pj52.onrender.com/api");
  const data = await res.json();
  message.value = data.message;
});
</script>

<template>
  <main>
    <h1>{{ message }}</h1>
    <TheWelcome />
  </main>
</template>
