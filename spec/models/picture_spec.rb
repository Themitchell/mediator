require 'spec_helper'

describe Picture do

  context 'attributes' do
    it { should have_db_column :file }
    it { should have_db_column :name }
    it { should have_db_column :lat }
    it { should have_db_column :lng }
    it { should have_db_column :file_creation_date }
  end

  context 'asscoiations' do
    it { should belong_to :photoalbum }
  end

  context 'validations' do
    it { should validate_presence_of :file }
    it { should validate_presence_of :name }
  end

end
