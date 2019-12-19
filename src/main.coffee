import DefaultLayout from '~/layouts/Default.vue'

import VueClipboard from 'vue-clipboard2'

export default (Vue, {}) ->

	Vue.component 'Layout', DefaultLayout

	Vue.use VueClipboard