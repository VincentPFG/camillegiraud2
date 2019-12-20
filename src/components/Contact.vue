<template lang='pug'>
v-row(justify='center')
	v-col(cols='12', md='6')
		v-list
			v-list-item
				v-list-item-icon
					v-icon(large) mdi-cellphone
				v-list-item-content
					v-list-item-title 06 70 13 08 03
				v-list-item-action
					v-btn(icon href='tel:+33670130803')
						v-icon(color='primary') mdi-phone
					v-btn(icon @click='doCopy("+33673120803", "Numéro copié")')
						v-icon(color='primary') mdi-content-copy
			v-divider
			v-list-item
				v-list-item-icon
					v-icon(large) mdi-email
				v-list-item-content
					v-list-item-title camille-giraud@orange.fr
				v-list-item-action
					v-btn(icon href='mailto:camille-giraud@orange.fr')
						v-icon(color='primary') mdi-pen
					v-btn(icon @click='doCopy("camille-giraud@orange.fr", "Adresse mail copiée")')
						v-icon(color='primary') mdi-content-copy
			v-divider
			v-list-item
				v-list-item-icon
					v-icon(large) mdi-map-marker
				v-list-item-content
					v-list-item-title 11 Rue des Longines #[br] Écardenville sur Eure #[br] 27490 CLEF Vallée d'Eure
				v-list-item-action
					v-btn(icon href='https://goo.gl/maps/cQFpdJt1TRTG2Zb78')
						v-icon(color='primary') mdi-google-maps
			v-divider
			v-list-item
				v-row(justify='center')
					Form
			v-snackbar(v-model='snackbar' :color='color') {{text}}
</template>

<script lang='coffee'>
import Form from '~/components/Form'

export default
	components: {Form}
	data: ->
		snackbar: no
		color: null
		text: null
	methods:
		doCopy: (toCopy, message) ->
			@$copyText toCopy
				.then =>
					@color = 'success'
					@text = message
				, =>
					@color = 'error'
					@text = 'Une erreur est survenue'
			@snackbar = yes
</script>