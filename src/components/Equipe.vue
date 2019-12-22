<template lang='pug'>
v-card
    v-window(show-arrows)
        v-window-item(v-for='n in 3' :key='n')
            v-container
                v-row
                    v-col(cols='12' md='6')
                        v-row(justify='center')
                            v-avatar(size='33vw').grey
                                v-icon(size='20vw') mdi-account
                    v-col(cols='12' md='6')
                        v-card(flat color='transparent')
                            v-card-title Prénom NOM
                            v-card-subtitle Poste
                            v-card-text Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
</template>

<script lang='coffee'>

</script>