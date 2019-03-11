function vigenere()
    print("C:")
    cipher=readline()
    print("key:")
    key=readline()
    loop=length(key)
    plain=""

    for i in 1:length(cipher)
        idx=i%loop
        if idx==0
            idx+=loop
        end
        x=cipher[i]-Int(key[idx])
        if isuppercase(cipher[i])
            if Int(x)<0
                x+=26
            end
            x+=65
        else
            if Int(x)<0
                x+=26
            end
            x+=97
        end
        plain*=x
    end
    println(plain)
end

vigenere()