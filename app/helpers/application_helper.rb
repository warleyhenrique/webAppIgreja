module ApplicationHelper
    
    GENERO = [
    ["Masculino", "M"],
    ["Femino", "F"],
  ]
  
    ESTADO_CIVIL = [
    ["Solteiro(a)", "SO"],
    ["Casado(a)", "CA"],
    ["Separado(a)", "SE"],
    ["Divorciado(a)", "DI"],
    ["Viúvo", "VI"],
  ]
  
    ESCOLARIDADE = [
    ["Fundamental - Incompleto"," FI"],
    ["Fundamental - Completo","FC"],
    ["Médio - Incompleto","MI"],
    ["Médio - Completo","MC"],
    ["Superior - Incompleto","SI"],
    ["Superior - Completo","SC"]
  ]
    
    def schooling_for_select(selected)
        options_for_select(ESCOLARIDADE,selected)
    end 
    
    def marital_status_for_select(selected)
        options_for_select(ESTADO_CIVIL,selected)
    end  
    
    def sex_for_select(selected)
        options_for_select(GENERO,selected)
    end  
    
    def active_menu(link_path)
        current_page?(link_path) ? "w3-blue" : ""
    end
end
