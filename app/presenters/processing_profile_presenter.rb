class ProcessingProfilePresenter < SimpleDelegator
  include Mixins::PresenterWithAttributes

  def initialize(pp)
    @processing_profile = pp
    super(pp)
  end

  private
  def model_object
    @processing_profile
  end

  def attribute_pairs
    @pairs ||= processing_profile_params.each_with_object({}) do |param, h|
      h[param.param_name] = ->(p) do
        if param.param_name == 'reference_sequence_model_id'
          link_span(param.param_value, model_path(param.param_value))
        else
          param.param_value
        end
      end
    end
  end
end
