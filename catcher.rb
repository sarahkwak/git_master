catch :give_name do
  puts "We will call you Ron"
end

def call_my_name
  names = %w[bri ryan sarah jon hal]
  # p names
  names.each do |name|
    puts name
    throw :give_name if name == 'sarah'
  #   puts "+" * 30
  end
  # throw :give_name
end


call_my_name
