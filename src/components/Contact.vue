<template lang="pug">
v-row(justify='center')
	v-col(cols='12', md='12')
		//- v-list.list-icon-patch
		//- 	v-list-item
		//- 		v-list-item-icon
		//- 			v-icon(large) mdi-cellphone
		//- 		v-list-item-content
		//- 			v-list-item-title 06 70 13 08 03
		//- 		v-list-item-action
		//- 			v-btn(icon href='tel:+33670130803')
		//- 				v-icon(color='primary') mdi-phone
		//- 			v-btn(icon @click='doCopy("+33673120803", "Numéro copié")')
		//- 				v-icon(color='primary') mdi-content-copy
		//- 	v-divider
		//- 	v-list-item
		//- 		v-list-item-icon
		//- 			v-icon(large) mdi-email
		//- 		v-list-item-content
		//- 			v-list-item-title camille-giraud@orange.fr
		//- 		v-list-item-action
		//- 			v-btn(icon href='mailto:camille-giraud@orange.fr')
		//- 				v-icon(color='primary') mdi-pen
		//- 			v-btn(icon @click='doCopy("camille-giraud@orange.fr", "Adresse mail copiée")')
		//- 				v-icon(color='primary') mdi-content-copy
		//- 	v-divider
		//- 	v-list-item
		//- 		v-list-item-icon
		//- 			v-icon(large) mdi-map-marker
		//- 		v-list-item-content
		//- 			v-list-item-title 11 Rue des Longines #[br] Écardenville sur Eure #[br] 27490 CLEF Vallée d'Eure
		//- 		v-list-item-action
		//- 			Maps
		//- 	v-divider
		//- 	v-list-item
		//- 		v-row(justify='center')
		//- 			Form
		//- 	v-snackbar(v-model='snackbar' :color='color') {{text}}
		
		v-expansion-panels(multiple)
		
			v-expansion-panel
					v-expansion-panel-header Formulaire de contact
					v-expansion-panel-content
						//- v-row(justify='center')
						v-alert(type='info') Ce formulaire est opérationnel.
						Form
		
		
		
			v-expansion-panel
				v-expansion-panel-header Téléphone
					//- v-spacer
					//- v-icon mdi-cellphone
				v-expansion-panel-content 
					v-card(flat)
						v-card-title 06 70 13 08 03
						v-card-actions
							v-btn( href='tel:+33670130803') 
								v-icon(color='primary') mdi-phone
								//- v-spacer
								span appeler
							v-btn( @click='doCopy("+33673120803", "Numéro copié")') 
								v-icon(color='primary') mdi-content-copy
								span copier
		
			v-expansion-panel
				v-expansion-panel-header Mail
					//- v-spacer
					//- v-icon mdi-email
				v-expansion-panel-content
					v-card(flat)
						v-card-title camille-giraud@orange.fr
						v-card-actions
							v-btn( href='mailto:camille-giraud@orange.fr')
								v-icon(color='primary') mdi-pen
								span écrire
							v-btn( @click='doCopy("camille-giraud@orange.fr", "Adresse mail copiée")')
								v-icon(color='primary') mdi-content-copy
								span copier
		
			//- v-expansion-panel
			//- 	v-expansion-panel-header Adresse
			//- 		v-icon mdi-map-marker
			//- 	v-expansion-panel-content 11 Rue des Longines #[br] Écardenville sur Eure #[br] 27490 CLEF Vallée d'Eure
			
			v-expansion-panel
				v-expansion-panel-header Adresse
					v-icon mdi-google-maps
				v-expansion-panel-content
					Maps
			
			
			v-snackbar(v-model='snackbar' :color='color') {{text}}
</template>

<script lang="coffee">
import Form from '~/components/Form'
import Maps from '~/components/Maps'

export default
	components: {Form, Maps}
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

<style>
.list-icon-patch *:first-child {
	align-self: center;
}
</style>
