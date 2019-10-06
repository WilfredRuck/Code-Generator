@codes.each do |code|
  json.set! code.id do
    json.extract! code, :id, :name
  end
end