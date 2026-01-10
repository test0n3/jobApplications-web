module JobApplicationHelper
  def humanized_states(enum_name)
    I18n.t("job_application.attributes.states.#{enum_name}")
  end
end

