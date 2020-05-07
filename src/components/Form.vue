<template lang="pug">
div
    v-form(v-show='false' netlify name='contact')
        textarea(name='contenu')
    //- v-btn(@click='dialog = true' color='primary') formulaire de contact
    //- v-dialog(v-model='dialog')
    //- v-card
        //- v-toolbar(color='primary')
        //-     v-toolbar-title Formulaire de contact
        //-     v-spacer
        //-     v-btn(icon @click='dialog = false')
        //-         v-icon mdi-close
    v-form(@submit.prevent='onSubmit' ref='form')
        v-container
            v-row
                v-col(cols='12' md='4')
                    v-select(outlined :items='civilItems' label='Civilité' v-model='civil')
                v-col(cols='12' md='8')
                    v-text-field(outlined v-model='name' label='Nom' :rules='rules.name')
            v-row
                v-col(cols='12' md='4')
                    v-text-field(outlined v-model='phone' type='tel' label='Téléphone' :rules='rules.phone' prepend-icon='mdi-cellphone')
                v-col(cols='12' md='4')
                    v-text-field(outlined v-model='email' type='email' label='Mail' :rules='rules.email' prepend-icon='mdi-email')
                v-col(cols='12' md='4')
                    v-textarea(outlined v-model='address' label='Adresse' prepend-icon='mdi-map-marker' :rules='rules.name')
            v-textarea(outlined v-model='message' label='Message' prepend-icon='mdi-pen' :rules='rules.name')
            v-row(justify='center')
                v-btn(type='submit' fab color='primary')
                    v-icon mdi-send
    v-snackbar(v-model='successSB' color='success' :timeout='0') Formulaire envoyé
        v-btn(icon @click='successSB = false')
            v-icon mdi-close
    v-snackbar(v-model='errorSB' color='error' :timeout='0') Une erreur est survenue
        v-btn(icon @click='arrorSB = false' )
            v-icon mdi-close
</template>

<script lang="coffee">
encode = (data) -> ("#{encodeURIComponent key}=#{encodeURIComponent data[key]}" for key of data).join '&'
requis = (v) => !!v or "Requis"

export default
    data: ->
        # form
        message: ''
        email: ''
        phone: ''
        address: ''
        name: ''
        civil: ''
        # other
        dialog: off
        civilItems: ['Madame', 'Monsieur']
        rules:
            name: [
                # (v) => !!v or "Nom requis"
                requis
            ]
            email: [
                # => (!!@phone or !!@email) or "Téléphone ou Mail requis"
                (v) => (!v or /.+@.+\..+/.test v) or "Le format semble invalide"
            ]
            phone: [
                # => (!!@phone or !!@email) or "Téléphone ou Mail requis"
                requis
                (v) => (!v or /(^((\+|00)33|0)\d{9}$|^((\+|00 ?)33 |0)\d( \d{2}){4}$)/.test v) or "Le format semble invalide"
            ]
        successSB: off
        errorSB: off
    methods:
        onSubmit: ->
            if @$refs.form.validate()
                fetch '/',
                    method: 'POST'
                    headers: 'Content-Type': 'application/x-www-form-urlencoded'
                    body: encode
                        'form-name': 'contact'
                        contenu: """

                            #{@civil} #{@name}

                            #{@phone}   #{@email}

                            #{@address}

                            #{@message}
                        """
                .then =>
                    @dialog = off
                    @$refs.form.reset()
                    @successSB = on
                .catch =>
                    @dialog = off
                    @errorSB = on
</script>
