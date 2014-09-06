# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	templateData:
        site:
            title: "The CRUMBBL CUP"

        getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title

	collections:
        pages: ->
            @getCollection("html").findAllLive({isPage:true})
}

# Export the DocPad Configuration
module.exports = docpadConfig