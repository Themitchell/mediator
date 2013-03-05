module HelperMethods

  def should_have_table(selector, arr)
    within selector do
      arr.each_with_index do |row, row_idx|
        row.each_with_index do |expected_text, cell_idx|
          xpath = "tr[#{row_idx + 1}]/*[#{cell_idx + 1}]"
          elem = find(:xpath, xpath)
          # The following is so that we can see the xpath for the failing selector
          "'#{elem.text.strip}' for element '#{xpath}'".should == expected_text unless elem.text.strip.gsub(/(\n*\s{2,})/, " ") == expected_text.to_s.strip
        end
      end

      # check number of rows are as expected
      all(:xpath, "tr").size.should == arr.size
    end
  end
end
