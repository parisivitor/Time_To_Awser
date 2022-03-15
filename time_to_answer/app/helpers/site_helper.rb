module SiteHelper
  def msg_jumbotron
    case params[:action]
    when 'index'
      "Resultado das ultimas perguntas cadastradas."
    when 'questions'
      "Resultado da pesquisa para o termo: \"#{params[:term]}\" "
    when 'subject'
      "Assunto: #{params[:subject]}"
    end
  end
end
