namespace :sample_data do
  desc "TODO"
  task create: :environment do
    p = Party.create()
    p.name = PartyName.create(name: "new", validForBegin: '2018-01-01', validForEnd: '2020-01-01')
    p.expired_names << PartyName.create(name: "old1", validForBegin: '2015-01-01', validForEnd: '2017-01-01')
    p.expired_names << PartyName.create(name: "old2", validForBegin: '2016-01-01', validForEnd: '2017-01-01')

    puts p.name.to_s
    p.expired_names.each do |e|
      puts e.to_s
    end

    puts "Party count: #{Party.all.count}"
    puts "PartyNames count: #{PartyName.all.count}"
    puts Party.left_joins(:name, :expired_names).to_sql
    p = Party.left_joins(:name, :expired_names).last
    puts p.inspect
    puts p.name.inspect
    puts p.expired_names.inspect
  end
end
