<template lang='pug'>
Layout
    br
    h1.display-3.text-center Entretien Espaces Verts
    br
    v-carousel(cycle progress hide-delimiters :show-arrows='false')
        v-carousel-item(v-for='image in images' :key='image' :src='image')
    #contact
        br
        h2.display-1.text-center Nous contacter
        br
        Contact
    #equipe
        br
        h2.display-1.text-center Notre équipe
        br
</template>

<script lang='coffee'>
import Contact from '~/components/Contact'

export default
    components: {Contact}
    data: ->
        images: ['devanture.jpg', 'jardin.jpg', 'mare.jpg']
</script>