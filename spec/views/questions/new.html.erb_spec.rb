require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :title => "MyText",
      :answer => "MyText"
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questions_path, "post" do
      assert_select "textarea#question_title[name=?]", "question[title]"
      assert_select "textarea#question_answer[name=?]", "question[answer]"
    end
  end
end
