colors = (require 'vuetify/es5/util/colors').default

light =
    primary: colors.green
    secondary: colors.lime
    accent: colors.green.accent2

module.exports =

    theme:
        dark: yes
        themes: {
            light
            dark: {
                ...light
                # primary: colors.green.darken1
            }
        }