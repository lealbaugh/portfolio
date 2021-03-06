# From https://github.com/gummesson/jekyll-vimeo-plugin
# A plugin for embedding videos from Vimeo using a simple Liquid tag, ie: {% vimeo 12345678 %}.
# Based of the Youtube plugin from http://www.portwaypoint.co.uk/jekyll-youtube-liquid-template-tag-gist/

# Modified for fluid-width videos based on http://css-tricks.com/NetMag/FluidWidthVideo/Article-FluidWidthVideo.php

module Jekyll
  class Vimeo < Liquid::Tag
    @@width = 500
    @@height = 281

    def initialize(name, id, tokens)
      super
      @id = id.strip
    end

    def render(context)
      %(<p class="videoWrapper"><iframe width="#{@@width}" height="#{@@height}" src="http://player.vimeo.com/video/#{@id}?color=00aab4&title=0&byline=0&portrait=0" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></p>)
    end
  end
end

Liquid::Template.register_tag('vimeo', Jekyll::Vimeo)