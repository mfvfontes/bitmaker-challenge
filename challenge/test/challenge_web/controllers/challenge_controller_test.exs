defmodule ChallengeWeb.ChallengeControllerTest do
    use ChallengeWeb.ConnCase, async: true

    test "GET challenge/" do
        conn = get build_conn(), "challenge/", captcha: ""
        assert conn.resp_body =~ "0"
    end

    test "GET challenge/1" do
        conn = get build_conn(), "challenge/", captcha: "1"
        assert conn.resp_body =~ "1"
    end

    test "GET challenge/1111" do
        conn = get build_conn(), "challenge/", captcha: "1111"
        assert conn.resp_body =~ "4"
    end

    test "GET challenge/1122" do
        conn = get build_conn(), "challenge/", captcha: "1122"
        assert conn.resp_body =~ "3"
    end

    test "GET challenge/1234" do
        conn = get build_conn(), "challenge/", captcha: "1234"
        assert conn.resp_body =~ "0"
    end

    test "GET challenge/91212129" do
        conn = get build_conn(), "challenge/", captcha: "91212129"
        assert conn.resp_body =~ "9"
    end
end