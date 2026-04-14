<script setup>
import TheWelcome from '../components/TheWelcome.vue'

import { ref, onMounted } from "vue";

const message = ref("");

onMounted(async () => {
  const res = await fetch("http://localhost:5000/api");
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
