RakutenWebService.configure do |c|
  c.application_id = ENV['RAKUTEN_APPLICATION_ID']
  
  items = RakutenWebService::Ichiba::Item.search(keyword: 'Ruby') # This returns Enumerable object
  items.first(10).each do |item|
  puts "#{item['itemName']}, #{item.price} yen" # You can refer to values as well as Hash.
end
end