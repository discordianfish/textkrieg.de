def display_thumbnail(article)
  doc = Hpricot(article.body + article.extended)
  img = doc.at("img.title")
 
  img = doc.at("img") unless img
 
  if img
    return img.attributes['src']
  else
    return "http://textkrieg.de/files/ada1.JPG"
  end
end
