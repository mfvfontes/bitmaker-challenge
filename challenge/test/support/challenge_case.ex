ExUnit.start()

defmodule ChallengeWeb.ChallengeTest do
    use ChallengeWeb.ConnCase, async: true

    test "BCaptcha []" do
        assert Challenge.solveCaptcha(String.graphemes("")) == 0
    end

    test "BCaptcha 1" do
        assert Challenge.solveCaptcha(String.graphemes("1")) == 1
    end

    test "BCaptcha 1111" do
        assert Challenge.solveCaptcha(String.graphemes("1111")) == 4
    end

    test "BCaptcha 1122" do
        assert Challenge.solveCaptcha(String.graphemes("1122")) == 3
    end

    test "BCaptcha 1234" do
        assert Challenge.solveCaptcha(String.graphemes("1234")) == 0
    end

    test "BCaptcha 91212129" do
        assert Challenge.solveCaptcha(String.graphemes("91212129")) == 9
    end
end