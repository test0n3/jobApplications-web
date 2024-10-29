module JobApplicationsHelper
  def application_state_options
    JobApplication.application_states.map do |key, _v|
      translation = t("enums.job_application.application_states.#{key}")
      [translation, key]
    end
  end

  def application_state_translated(application_state)
    t("enums.job_application.application_state.#{application_state}")
  end
end
