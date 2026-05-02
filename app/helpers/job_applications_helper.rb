module JobApplicationsHelper
  def humanized_states(enum_name)
    I18n.t("job_applications.states.#{enum_name}")
  end

  def current_states_collection
    JobApplication.states.map do |k, _v|
      translation = humanized_states(k)
      [ translation, k ]
    end
  end
end
