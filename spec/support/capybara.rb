module Capybara
  class Session
    def has_image?(src, options={})
      options.symbolize_keys!
      srcset = options.delete(:srcset)

      srcset_xpath = "[contains(@srcset, '#{srcset}')]"
      src_xpath = "[contains(@src, '#{src}')]"

      has_xpath?(".//img#{src_xpath}#{srcset_xpath if srcset}", options)
    end
  end
end
