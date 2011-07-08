module WinesHelper
  def label_image_url(wine)
    "http://www.saq.com/wcsstore/saqcom/images_produits/#{wine.code_saq}_g.jpg"
  end
end
