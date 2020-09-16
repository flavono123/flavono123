class TypeIconCrawler
  def parse_image_urls
  end

  private

  def html
    @html ||= Net::HTTP.get(URI.parse('https://pokemongo.fandom.com/wiki/Types'))
  end
end
