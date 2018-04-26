defmodule ChallengeWeb.ChallengeController do
    use ChallengeWeb, :controller

    def show_result(conn, %{"captcha" => captcha}) do
        list = String.graphemes(captcha)
        result = Challenge.solveCaptcha(list)        
        render conn, "show_result.html", result: result
        conn
            |> put_req_header("content-type", "text/html")
            |> send_resp(200, to_string(result))
    end

end