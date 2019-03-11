function vigenere(cipher::String,key::String)
    loop=length(key)
    plain=""

    for i in 1:length(cipher)
        idx=i%loop
        if idx==0
            idx+=loop
        end
        x=cipher[i]
        if isuppercase(cipher[i])
            if x<uppercase(key[idx])
                x+=26
            end
            x+=65
            x-=Int(uppercase(key[idx]))
        else
            if x<key[idx]
                x+=26
            end
            x+=97
            x-=Int(key[idx])
        end
        plain*=x
    end
    println(plain)
end