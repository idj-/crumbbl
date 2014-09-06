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
    plugins:
        downloader:
            downloads: [
                {
                    name: 'Crumbbl Players Hall of Fame'
                    path: 'src/static/img/phof.jpg'
                    url: 'http://bbm.jcmag.fr/BloodBowlManager.WebSite/ImageHallOfFamePlayersCompact.aspx?Id=10859&lang=en-US'
                }
                {
                	name: 'Crumbbl Teams Hall of Fame'
                	path: 'src/static/img/thof.jpg'
                	url: 'http://bbm.jcmag.fr/BloodBowlManager.WebSite/ImageHallOfFameTeamsCompact.aspx?Id=10859&lang=en-US'
                }
                {
                    name: 'Crumbbl Graveyard'
                    path: 'src/static/img/graveyard.png'
                    url: 'http://bbm.jcmag.fr/BloodBowlManager.WebSite/ImageGraveyard.aspx?Id=10859&lang=en-US&type=png'
                }
            ]
}

# Export the DocPad Configuration
module.exports = docpadConfig