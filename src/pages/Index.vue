<template lang='pug'>
Layout
    h1 Entretien Espaces Verts
    v-carousel(cycle progress hide-delimiters :show-arrows='false')
        v-carousel-item(v-for='image in images' :key='image' :src='image')
    #contact
        h2 Nous contacter
        Contact
    #equipe
        h2 Notre équipe
</template>

<script lang='coffee'>
import Contact from '~/components/Contact'

export default
    components: {Contact}
    data: ->
        images: ['devanture.jpg', 'jardin.jpg', 'mare.jpg']
</script>