require 'spec_helper'

describe "tweets/new" do
  before(:each) do
    assign(:tweet, stub_model(Tweet,
      :status => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tweets_path, "post" do
      assert_select "input#tweet_status[name=?]", "tweet[status]"
      assert_select "input#tweet_user_id[name=?]", "tweet[user_id]"
    end
  end
end
