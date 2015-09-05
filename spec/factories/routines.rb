FactoryGirl.define do
  factory :routine do
    title 'my standard leg workout'
    focus 'glutes, thighs'
    details 'just working on building mass with the intention to move to strength & power focus next month'
  end

  factory :invalid_routine, parent: :routine do
    title nil
    focus nil
  end
end
