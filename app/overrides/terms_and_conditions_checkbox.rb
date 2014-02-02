Deface::Override.new(:virtual_path => "spree/checkout/_#{SpreeTermsAndConditions.show_on_step.to_s}",
                     :name => "terms_and_conditions_checkbox",
                     :insert_before => "[data-hook='buttons']",
                     :partial => "spree/checkout/terms_and_conditions_checkbox",
                     :disabled => false)
