function allergies(code::Int64)
    allergens = ["eggs", "peanuts", "shellfish", "strawberries",
                 "tomatoes", "chocolate", "pollen", "cats"]

    if code < 0
        throw(DomainError("The code cannot be negative."))
    end

    code = code % 256

    rem = code # remainder
    result = String[]
    i = 1
    while rem > 0
        if rem % 2 == 1
            push!(result, allergens[i])
        end
        rem ÷= 2
        i += 1
    end


    return result
end
