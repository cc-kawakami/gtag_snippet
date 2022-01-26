# frozen_string_literal: true

RSpec.describe GtagSnippet do
  it "has a version number" do
    expect(GtagSnippet::VERSION).not_to be nil
  end

  class TestGtagSnippetHelper
    include GtagSnippet::Helper
  end

  describe GtagSnippet::Helper do
    it "render gtag snippet" do
      rendered = TestGtagSnippetHelper.new.gtag_snippet(measurement_id: "UA-1234567-8")
      is_asserted_by { rendered.include?("<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-1234567-8\"></script>") }
    end
  end
end
