class ApplicationController < ActionController::Base

  def current_ability
    @current_ability ||= case
      when current_recompany
        RecompanyAbility.new(current_recompany)
      when current_company
        CompanyAbility.new(current_company)
      else
        GuestAbility.new
    end
  end

end
