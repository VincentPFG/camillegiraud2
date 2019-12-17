colors = (require 'vuetify/es5/util/colors').default

light =
    primary: colors.green.lighten1
    secondary: colors.lime
    accent: colors.green.accent2

module.exports =

    theme:
        dark: yes
        themes: {
            light
            dark: {
                primary: colors.green.darken1
            }
        }