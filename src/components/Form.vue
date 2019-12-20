<template lang='pug'>
div
    v-btn(@click.stop='dialog = true' color='primary') formulaire de contact
    v-dialog(v-model='dialog')
        v-card
            v-toolbar(color='primary')
                v-toolbar-title Formulaire de contact
                v-spacer
                v-btn(icon @click='dialog = false')
                    v-icon mdi-close
            v-form(netlify name='contact' @submit.prevent='onSubmit')
                div(hidden)
                    input(name='de')
                    textarea(name='message')
                    input(name='mail')
                    input(name='téléphone')
                    textarea(name='addresse')
                v-container
                    v-row
                        v-col(cols='12' md='4')
                            v-select(:items='civilItems' label='Civilité' v-model='civil')
                        v-col(cols='12' md='8')
                            v-text-field(v-model='name' label='Nom' :rules='rules.name')
                    v-row
                        v-col(cols='12' md='4')
                            v-text-field(v-model='phone' label='Téléphone' :rules='rules.phone')
                        v-col(cols='12' md='4')
                            v-text-field(v-model='email' label='Mail' :rules='rules.email')
                        v-col(cols='12' md='4')
                            v-textarea(v-model='address' label='Adresse')
                    v-textarea(v-model='message' label='Message')
                    v-row(justify='center')
                        v-btn(type='submit' fab color='primary')
                            v-icon mdi-send
</template>

<script lang='coffee'>
encode = (data) -> ("#{encodeURIComponent key}=#{encodeURIComponent data[key]}" for key of data).join '&'

export default
    data: ->
        # form
        message: null
        email: null
        phone: null
        address: null
        name: null
        civil: null
        # other
        dialog: on
        civilItems: ['Madame', 'Monsieur']
        rules:
            name: [
                (v) => !!v or "Votre nom est requis"
            ]
            email: [
                => (!!@phone or !!@email) or "Un moyen de contact est requis"
                (v) => /.+@.+\..+/.test(v) or "Le format semble invalide"
            ]
            phone: [
                => (!!@phone or !!@email) or "Un moyen de contact est requis"
                (v) => /(^((\+|00)33|0)\d{9}$|^((\+|00 ?)33 |0)\d( \d{2}){4}$)/.test(v) or "Le format semble invalide"
            ]
    methods:
        onSubmit: ->
            fetch '/',
                method: 'POST'
                headers: 'Content-Type': 'application/x-www-form-urlencoded'
                body: encode {
                    'form-name': 'contact'
                    de: "#{@civil} #{@name}"
                    mail: @email
                    @message
                }
            .then -> console.log 'success'
            .catch -> console.log 'error'
</script>