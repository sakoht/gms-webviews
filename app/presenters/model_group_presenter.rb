class ModelGroupPresenter
  include Mixins::PresenterWithAttributes
  include Mixins::PresenterWithModelPassthrough

  def initialize(mg)
    @mg = mg
  end

  private
  def attribute_pairs
    {
      "ID" => ->(mg) {mg.id},
      "Name" => ->(mg) {mg.name},
      "User Name" => ->(mg) {mg.user_name},
      "Model Count" => ->(mg) {mg.models.count}
    }
  end

  def model_object
    @mg
  end

end