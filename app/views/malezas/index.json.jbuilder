json.array!(@malezas) do |maleza|
  json.extract! maleza, :id, :nombre_comun, :nombre_cientifico, :ciclo_id, :crecimiento, :espina, :latex, :tipo_de_tallo, :peciolo, :tipo_de_hoja
  json.url maleza_url(maleza, format: :json)
end
