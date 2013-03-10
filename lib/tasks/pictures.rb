namespace :pictures do

  desc 'Import pictures'
  task :import => :environment do
    PictureImporter.start
  end
end
