get "/download/:downloadPdfId" do
  cache = IronCache::Client.new
  cache.cache_name = "pdfperso"
  @pdfReg = RegistriertesPDF.parse(cache.items.get(params[:downloadPdfId]).value)

  erb :'download/downloadPdfId'
end


get "/download/eingeplant" do
  # name, email, downloadPdfId in queue stellen
  # worker anstoßen

  # anwender informieren, dass er über personalisiertes PDF per email informiert wird

  erb :'download/eingeplant'
end


