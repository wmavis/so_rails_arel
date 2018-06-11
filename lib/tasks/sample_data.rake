namespace :sample_data do
  desc "TODO"
  task create: :environment do
    p = Party.create()
    p.name = PartyName.create(name: "new")
    p.expired_names << ExpiredName.create(name: "old1")
    p.expired_names << ExpiredName.create(name: "old2")

    puts p.name.to_s
    p.expired_names.each do |e|
      puts e.to_s
    end

    puts "Party count: #{Party.all.count}"
    puts "PartyNames count: #{PartyName.all.count}"
    puts "ExpiredNames count: #{ExpiredName.all.count}"
  end
end
