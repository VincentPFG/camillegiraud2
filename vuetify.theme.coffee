colors = (require 'vuetify/es5/util/colors').default

module.exports =

    theme:
        dark: yes
        themes:
            light: {
                primary: colors.green.lighten1
                secondary: colors.lime.lighten4
                accent: colors.green.accent2
            }
            dark: {
                primary: colors.green.darken1
                secondary: colors.lime.darken1
                accent: colors.green.accent2
            }