Spree::Gateway::Bogus.create!(
  {
    name: "Credit Card",
    description: "Paiement par carte.",
    active: true
  }
)

Spree::PaymentMethod::Check.create!(
  {
    name: "Check",
    description: "Paiement par cheque.",
    active: true
  }
)
