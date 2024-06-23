def caesar_cipher(message, shift)
    
    shifted_text = message.chars.map do |char|
        if char =~ /[a-z]/
            encrypt_index = char.ord + shift
            if encrypt_index >= 122
                encrypt_index =  encrypt_index - 26
            end
            encrypt_index.chr

        elsif char =~ /[A-Z]/
            encrypt_index = char.ord + shift
            if encrypt_index >= 90
                encrypt_index =  encrypt_index - 26
            end
            encrypt_index.chr
        else
            char
        end
    end
    shifted_text.join
end

caesar_cipher("What a string!", 5)
