class RegistriertesPDF
  attr_accessor :downloadPdfId
  attr_accessor :originalPdfUrl
  attr_accessor :beschreibung
  attr_accessor :email

  def to_s
    "downloadPdfId:#{downloadPdfId}\noriginalPdfUrl:#{originalPdfUrl}\nbeschreibung:#{beschreibung}\nemail:#{email}"
  end

  def self.parse(t)
    fields = t.split("\n")

    o = RegistriertesPDF.new
    o.downloadPdfId = fields[0].split(":")[1]
    o.originalPdfUrl = fields[1].split(":")[1]
    o.beschreibung = fields[2].split(":")[1]
    o.email = fields[3].split(":")[1]
    return o
  end
end