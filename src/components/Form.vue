<template lang='pug'>
div
    v-btn(@click.stop='dialog = true' small fab color='primary')
        v-icon mdi-pencil
    v-dialog(v-model='dialog')
        //- template(v-slot:activator='{on}')
        //-     v-layout(justify-center)
        //-         v-btn(v-on='on') contacter
        v-card
            v-form(netlify name='contact' @submit.prevent='onSubmit')
                //- div(hidden)
                //-     input(name='form-name' value='contact')
                //-     input(name='de' :value='intro')
                //-     input(name='mail' :value='email')
                //-     textarea(name='message' :value='message')
                v-container
                    v-row
                        v-col(cols='12' md='2')
                            v-select(:items='civilItems' label='Civilité' v-model='civil')
                        v-col(cols='12' md='5')
                            v-text-field(v-model='name' label='Nom')
                        v-col(cols='12' md='5')
                            v-text-field(v-model='email' label='Mail')
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
        message: ''
        email: ''
        # computed form
        name: ''
        civil: ''
        # other
        dialog: off
        civilItems: ['Madame', 'Monsieur']
    # computed:
    #     intro: -> "#{@civil} #{@name}"
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