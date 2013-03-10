require 'spec_helper'

describe Picture do

  context 'validations' do
    it { should validate_presence_of :file }
    it { should validate_presence_of :name }
  end

end
