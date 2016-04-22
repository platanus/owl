describe TogglActivityChecker do
  let(:user) do
    {
      id: 17,
      first_name: "Amós",
      email: "amos@platan.us",
      twitter: "",
      description_en: "",
      description_es: "",
      created_at: "2015-04-13T20:57:30.000Z",
      updated_at: "2015-08-12T17:00:00.000Z",
      picture_file_name: "Ámos.jpg",
      picture_content_type: "image/jpeg",
      picture_file_size: 204348,
      picture_updated_at: "2015-08-12T17:00:00.000Z",
      title_es: "Desarrollador",
      title_en: "Developer",
      last_name: "Rivera",
      venue_id: 1,
      slug: "amos-rivera",
      linkedin: "",
      github: "amosrivera",
      calendar: "amos@platan.us",
      develops: true,
      current: true,
      first_name_and_last_name: "Amós Rivera",
      toggl_key:ENV['TEST_TOGGL_KEY']
    }

  end
  let(:checker) {TogglActivityChecker.new}
  it "should respond a boolean" do
    expect(checker.is_active?(user)).to be_in([true,false])
  end
  let(:mockApi) {TogglV8ApiMock}

  it "should respond true" do
    stub_const("TogglV8::API", mockApi)
    expect(checker.is_active?(user)).to eq(true)
  end
  it "should raise an exception if there is no toggl_key" do
    user[:toggl_key] = nil
    expect(checker.is_active?(user)).to raise_exception
  end
end
