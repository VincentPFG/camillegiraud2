<template lang='pug'>
div
    v-btn(@click='dialog = true' icon)
        v-icon(color='primary') mdi-google-maps
    v-dialog(v-model='dialog' fullscreen)
        v-card.grey
            v-toolbar(color='primary')
                v-toolbar-title Maps
                v-spacer
                v-btn(icon @click='dialog = false')
                    v-icon mdi-close
            iframe(src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10448.85393286428!2d1.2728786!3d49.1015847!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xadc438c8fdea25e!2sCamille%20GIRAUD%20-%20Entretien%20Espaces%20Verts!5e0!3m2!1sen!2sfr!4v1577093892715!5m2!1sen!2sfr")
</template>

<script lang='coffee'>
export default
    data: ->
        dialog: off
</script>

<style>
iframe {
    width: 100%;
    height: 100vh;
    border: 0
}
</style>