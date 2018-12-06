require_relative '../config/environment'

##RETURN CRIMES FOR GIVEN ZIP
def output(a)
    a.each do |val| puts "#{val.crime} || #{val.date}" end
        return nil
end

def search_by_zip
  puts "what's your zipcode?"
  zip = gets.chomp
  x = Report.all.select{|i| i.location.include?("#{zip}")} 
  output(x)
end
search_by_zip
#-----------------------------------------------------------#
##RETURN MOST COMMON CRIME(IN TOTAL)



##RETURN MOST COMMON CRIME FOR GIVEN ZIP


#-----------------------------------------------------------#
##RETURN RANK ZIPS BY CRIME INSTANCES



#-----------------------------------------------------------#
##WHERE AM I MOST LIKELY TO GET
  
  #MURDERED
  
  #STOLEN FROM

  #MY PROPERTY DAMAGED


  
  

