# json.subjects @subjects
# json.vitor "vitor risso parisi"
json.array! @subjects do |subject|
    json.id subject.id
    json.description subject.description
    json.author "Vitera!"
end
