FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some rationale"
    overtime_request 3.0
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    overtime_request 4.5
    user
  end

  factory :post_from_another_user, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    non_authorized_user
  end

end
