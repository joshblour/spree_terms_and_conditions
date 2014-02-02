Spree::Order.class_eval do

  def valid_terms_and_conditions?
    self.errors[:terms_and_conditions] << 'must be accepted' unless self.terms_and_conditions == true
    self.errors[:terms_and_conditions].empty? ? true : false
  end

  state_machine.before_transition :to => checkout_steps[checkout_steps.index(SpreeTermsAndConditions.on_checkout_step.to_sym) + 1], :do => :valid_terms_and_conditions?
end

Spree::PermittedAttributes.checkout_attributes << :terms_and_conditions


