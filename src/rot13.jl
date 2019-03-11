function rot13(text::String)
   after=""
   for i in text
        if 77<Int(i)<91 || 109<Int(i)<123
            i-=13
            after*=i
        elseif 64<Int(i)<78 || 96<Int(i)<110
           i+=13
            after*=i
        else
            after*=i
        end
   end
   println(after)
end