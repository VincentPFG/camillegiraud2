<template lang='pug'>
div
    v-btn(@click.stop='dialog = true' color='primary') formulaire de contact
    v-dialog(v-model='dialog')
        v-card
            iframe(src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10448.85393286428!2d1.2728786!3d49.1015847!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xadc438c8fdea25e!2sCamille%20GIRAUD%20-%20Entretien%20Espaces%20Verts!5e0!3m2!1sen!2sfr!4v1577030474927!5m2!1sen!2sfr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="")
</template>

<script lang='coffee'>
export default
    data: ->
        dialog: on
</script>