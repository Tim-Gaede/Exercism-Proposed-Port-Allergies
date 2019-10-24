using Test

include("allergies.jl")


# Tests adapted from `problem-specifications//canonical-data.json` @ v2.0.0

println("\n"^2, "-"^60, "\n"^3)

@testset "Test for eggs when not allergic to anything." begin
    @test ("eggs" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to eggs......................." begin
    @test ("eggs" ∈ allergies(1)) == true
    println()
end

@testset "Allergic to eggs and something else........." begin
    @test ("eggs" ∈ allergies(3)) == true
    println()
end


@testset "Allergic to something but not eggs.........." begin
    @test ("eggs" ∈ allergies(2)) == false
    println()
end

@testset "Eggs whn allergic to everything............." begin
    @test ("eggs" ∈ allergies(255)) == true
    println()
end

@testset "Peanuts when not allergic to anything......." begin
    @test ("peanuts" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to peanuts...................." begin
    @test ("peanuts" ∈ allergies(2)) == true
    println()
end

@testset "Allergic to peanuts and something else......" begin
    @test  ("peanuts" ∈ allergies(7)) == true
    println()
end

@testset "Allergic to something but not peanuts......." begin
    @test ("peanuts" ∈ allergies(5)) == false
    println()
end

@testset "Peanuts when allergic to everything........." begin
    @test ("peanuts" ∈ allergies(255)) == true
    println()
end

@testset "Shellfish when not allergic to anything....." begin
    @test ("shellfish" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to shellfish.................." begin
    @test ("shellfish" ∈ allergies(4)) == true
    println()
end

@testset "Allergic to shellfish and something else...." begin
    @test ("shellfish" ∈ allergies(14)) == true
    println()
end

@testset "Allergic to something but not shellfish....." begin
    @test ("shellfish" ∈ allergies(10)) == false
    println()
end

@testset "Shellfish when allergic to everything......." begin
    @test ("shellfish" ∈ allergies(255)) == true
    println()
end

@testset "Strawberries when not allergic to anything.." begin
    @test ("strawberries" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to strawberries..............." begin
    @test ("strawberries" ∈ allergies(8)) == true
    println()
end

@testset "Allergic to strawberries and something else." begin
    @test ("strawberries" ∈ allergies(28)) == true
    println()
end

@testset "Allergic to something but not strawberries.." begin
    @test ("strawberries" ∈ allergies(20)) == false
    println()
end

@testset "Strawberries when allergic to everything...." begin
    @test ("strawberries" ∈ allergies(255)) == true
    println()
end

@testset "Tomatoes when not allergic to anything......" begin
    @test ("tomatoes" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to tomatoes..................." begin
    @test ("tomatoes" ∈ allergies(16)) == true
    println()
end

@testset "Allergic to tomatoes and something else....." begin
    @test ("tomatoes" ∈ allergies(56)) == true
    println()
end

@testset "Allergic to something but not tomatoes......" begin
    @test ("tomatoes" ∈ allergies(40)) == false
    println()
end

@testset "tomatoes allergic to everything............." begin
    @test ("tomatoes" ∈ allergies(255)) == true
    println()
end

@testset "chocolate not allergic to anything.........." begin
    @test ("chocolate" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to chocolate.................." begin
    @test ("chocolate" ∈ allergies(32)) == true
    println()
end

@testset "Allergic to chocolate and something else...." begin
    @test ("chocolate" ∈ allergies(112)) == true
    println()
end

@testset "Allergic to something but not chocolate....." begin
    @test ("chocolate" ∈ allergies(80)) == false
    println()
end

@testset "Chocolate when alergic to everything........" begin
    @test ("chocolate" ∈ allergies(255)) == true
    println()
end

@testset "Pollen when not alergic to anything........." begin
    @test ("pollen" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to pollen....................." begin
    @test ("pollen" ∈ allergies(64)) == true
    println()
end

@testset "Allergic to pollen and something else......" begin
    @test ("pollen" ∈ allergies(224)) == true
    println()
end

@testset "Allergic to something but not pollen........" begin
    @test ("pollen" ∈ allergies(160)) == false
    println()
end

@testset "Pollen when allergic to everything.........." begin
    @test ("pollen" ∈ allergies(255)) == true
    println()
end

@testset "Cats when not allergic to anything.........." begin
    @test ("cats" ∈ allergies(0)) == false
    println()
end

@testset "Allergic only to cats......................." begin
    @test ("cats" ∈ allergies(128)) == true
    println()
end

@testset "Allergic to cats and something else........." begin
    @test ("cats" ∈ allergies(192)) == true
    println()
end

@testset "Allergic to something but not cats.........." begin
    @test ("cats" ∈ allergies(64)) == false
    println()
end

@testset "Cats when allergic to everything............" begin
    @test ("cats" ∈ allergies(255)) == true
    println()
end

@testset "no allergies..................." begin
    @test allergies(0) == []
    println()
end

@testset "Just eggs......................" begin
    @test allergies(1) == ["eggs"]
    println()
end

@testset "Just peanuts..................." begin
    @test allergies(2) == ["peanuts"]
    println()
end

@testset "Just strawberries.............." begin
    @test allergies(8) == ["strawberries"]
    println()
end

@testset "Eggs and peanuts..............." begin
    @test allergies(3) == ["eggs", "peanuts"]
    println()
end

@testset "More than eggs but not peanuts." begin
    @test allergies(5) == ["eggs", "shellfish"]
    println()
end

@testset "Lots of stuff.................." begin
    @test allergies(248) == ["strawberries", "tomatoes", "chocolate",
                             "pollen", "cats"]
    println()
end

@testset "Everything....................." begin
    @test allergies(255) == ["eggs", "peanuts", "shellfish", "strawberries",
                             "tomatoes", "chocolate", "pollen", "cats"]
    println()
end

@testset "Works when code is greater than 2ⁿ-1...." begin
    @test allergies(509) == ["eggs", "shellfish", "strawberries", "tomatoes", "chocolate",
                             "pollen", "cats"]
    println()
end

@testset "Throws error when code is less than zero...." begin
    @test_throws DomainError allergies(-7)
    println()
end
