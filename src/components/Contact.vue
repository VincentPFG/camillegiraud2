<template lang='pug'>
v-list
	v-list-item
		v-list-item-icon
			v-icon mdi-cellphone
		v-list-item-content
			v-list-item-title 06 70 13 08 03
		v-list-item-action
			v-btn(small fab color='primary')
				v-icon mdi-content-copy
	v-divider
	v-list-item
		v-list-item-icon
			v-icon mdi-email
		v-list-item-content
			v-list-item-title camille-giraud@orange.fr
		v-list-item-action
			v-btn(small fab color='primary')
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
</template>

<script lang='coffee'>
import Form from '~/components/Form'

export default
	components: {Form}
</script>