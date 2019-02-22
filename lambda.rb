 require 'date'
 require 'time'
 require 'active_support/core_ext/date'
 require 'active_support/core_ext/time'
 
 def handler(event:, context:)
   today = Date.today
   str =  "#{today.strftime('%Y/%m')}\n"
   str += (today.beginning_of_month..today.end_of_month).map {|d| d.strftime('[%Y/%m/%d]') }.each_slice(7).map{|ds| ds.join(' ') }.join("\n")
   str += "\n\n#{today.strftime('[%Y年]')} #{today.strftime('[%1m月]')}\n\n[月]\n"
   str
 end
