module JobApplicationsHelper
  def humanized_states(enum_name)
    I18n.t("job_applications.attributes.states.#{enum_name}")
  end
end

