module AdminsBackofficeHelper

  def translate_attribute(object, method)
    return object.model.human_attribute_name(method) if(object && method)
    "Informe os parametros!"
  end

end
