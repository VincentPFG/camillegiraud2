<template lang='pug'>
Layout
    v-alert(type='warning') Ce site est en cours de développement.
    v-parallax(src='devanture.jpg')
    Contact
</template>

<script lang='coffee'>
import Contact from '~/components/Contact'

export default
    components: {Contact}
</script>