# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'mestre_documento_fiscal', 'mestre_documentos_fiscais'
  inflect.irregular 'item_documento_fiscal', 'item_documentos_fiscais'
  inflect.irregular 'destinatario_documento_fiscal', 'destinatario_documentos_fiscais'
  inflect.irregular 'controle_identificacao', 'controles_identificacoes'
end
