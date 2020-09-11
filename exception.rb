begin
    1/0

rescue ZeroDivisionError => e
    puts e.message
    puts e.backtrace.inspect

rescue Exception => e
    puts e.message

ensure
    puts "this code always runs"
end
