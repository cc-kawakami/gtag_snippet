require "active_support/core_ext/string/strip"
require "active_support/core_ext/string/output_safety"

module GtagSnippet
  module Helper
    #
    # @param [String] measurement_id
    # @return [String]
    #
    def gtag_snippet(measurement_id: ENV["GA_PROPERTY_ID"])
      return "" unless measurement_id

      <<-HTML.strip_heredoc.html_safe
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=#{measurement_id}"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){window.dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', '#{measurement_id}');
        </script>
      HTML
    end
  end
end
