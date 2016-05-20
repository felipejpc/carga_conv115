json.array!(@mestre_documentos_fiscais) do |mestre_documento_fiscal|
  json.extract! mestre_documento_fiscal, :id
  json.url mestre_documento_fiscal_url(mestre_documento_fiscal, format: :json)
end
