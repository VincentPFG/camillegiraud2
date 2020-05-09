<template lang="pug">
v-app
	v-navigation-drawer(app v-model='drawer')
		v-list(nav)
			v-list-item(v-for='item in nav'  @click='$vuetify.goTo(item.route);  drawer = defaultDrawer' :key='item.name')
				v-list-item-content
					v-list-item-title {{item.name}}
	v-app-bar(app color='primary')
		v-app-bar-nav-icon(@click='drawer = !drawer')
		v-toolbar-title {{$static.metadata.siteName}}
		v-spacer
		Dark
	v-content
		v-container
			.d-flex.flex-column.justify-space-around
				v-alert(type='warning') Ce site est en cours de développement.
				slot
	v-footer(app absolute color='primary')
		v-row(justify='center') Développé par Vincent GIRAUD
</template>

<static-query>
{
	metadata {
		siteName
	}
}
</static-query>

<script lang="coffee">
import Dark from '~/components/Dark'

item = (@name, @route) ->

export default
	components: {Dark}

	data: ->
		drawer: null
		defaultDrawer: null
		nav: [
			new item 'Nous contacter', '#contact'
			new item 'Notre équipe', '#equipe'
		]

	mounted: -> defaultDrawer = drawer
</script>
