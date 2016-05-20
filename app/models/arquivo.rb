# Classe Arquivo
class Arquivo < ActiveRecord::Base
  mount_uploader :arquivo, ArquivoUploader

  def to_s
    "#{arquivo.to_s[-15, 15]}"
  end
end
