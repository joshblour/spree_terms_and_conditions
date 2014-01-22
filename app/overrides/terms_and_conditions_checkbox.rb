Deface::Override.new(:virtual_path => "spree/checkout/_payment",
                     :name => "terms_and_conditions_checkbox",
                     :insert_before => "[data-hook='buttons']",
                     :partial => "spree/checkout/terms_and_conditions_checkbox",
                     :disabled => false)
