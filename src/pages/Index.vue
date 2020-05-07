<template lang="pug">
Layout
    h1.display-3 Entretien Espaces Verts
    v-carousel
        v-carousel-item(v-for='image in images' :key='image' :src='image')
    #contact
        h2.display-1 Nous contacter
        Contact
    #equipe
        h2.display-1 Notre équipe
        v-alert(type='warning') Cette section est en attente du contenu necessaire.
        Equipe
</template>

<script lang="coffee">
import Contact from '~/components/Contact'
import Equipe from '~/components/Equipe'

export default
    metaInfo: title: 'Entretien Espaces Verts'
    components: {Contact, Equipe}
    data: ->
        images: ['devanture.jpg', 'jardin.jpg', 'mare.jpg']
</script>

<style>
h1,
h2 {
	text-align: center;
	margin-top: 10vh;
	margin-bottom: 5vh;
}
</style>
