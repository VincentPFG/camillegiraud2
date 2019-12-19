<template lang='pug'>
v-list
	v-list-item
		v-list-item-icon
			v-icon mdi-cellphone
		v-list-item-content
			v-list-item-title 06 70 13 08 03
		v-list-item-action
			v-btn(small fab color='primary' @click='doCopy("0673120803", "Numéro copié")')
				v-icon mdi-content-copy
	v-divider
	v-list-item
		v-list-item-icon
			v-icon mdi-email
		v-list-item-content
			v-list-item-title camille-giraud@orange.fr
		v-list-item-action
			v-btn(small fab color='primary' @click='doCopy("camille-giraud@orange.fr", "Adresse mail copiée")')
				v-icon mdi-content-copy
	v-divider
	v-list-item
		v-list-item-icon
			v-icon mdi-map-marker
		v-list-item-content
			v-list-item-title 11 Rue des Longines #[br] Écardenville sur Eure #[br] 27490 CLEF Vallée d'Eure
		v-list-item-action
			v-btn(small fab color='primary' to='https://goo.gl/maps/cQFpdJt1TRTG2Zb78')
				v-icon mdi-google-maps
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
		# onCopy: (e, success, text) ->
		# 	console.log e, success, text
		# 	@snackbar = yes
		# 	if success
		# 		@color = 'success'
		# 		@text = text
		# 	else
		# 		@color = 'error'
		# 		@text = 'Une erreur est survenue'
		# test: (e, x) -> console.log e, x
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