module Controllers
  class Users < Sinatra::Base
    get "/users" do
<<-HTML
<form action="/users" method="post" accept-charset="utf-8">
  <input type="hidden" name="_method" value="put" />

  <p><input type="submit" value="Continue &rarr;"></p>
</form>
HTML
    end
    
    put "/users" do
      "put me too"
    end
  end
end