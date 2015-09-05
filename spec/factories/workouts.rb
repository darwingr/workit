FactoryGirl.define do
  factory :workout do
    intensity 'medium'
    weekday 'tuesday'
    # Thu, Sep 3, 2015 at 5:09:42 PM EDT (Ottawa)
    # started_at '1441314582'
    # Thu, Sep 3, 2015 at 6:17:42 PM EDT (Ottawa)
    # finished_at '1441318662'
    workout_log 'a little out of breath on those lunges but feel amazing about everything else'
  end
end
