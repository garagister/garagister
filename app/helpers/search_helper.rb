module SearchHelper

  def interventions_collection
    hash = {}

    Settings.interventions.each do |intervention_array|
      value = intervention_array[0]
      label = intervention_array[1].name

      hash[label] = value
    end


    hash

    # Intervention.all.each do |intervention|
    #   id = intervention.id
    #   label = intervention.name

    #   hash[value] = label
    # end
  end
end
