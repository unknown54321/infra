<h3>Input INFO</h3>

travis encrypt HEROKU_EMAIL=your.email@somewhere.com --add
travis encrypt HEROKU_API_KEY=<API_KEY> --add

// AWS keys were taken down so i was not able to input the keys. 
travis encrypt AWS_ACCESS_KEY_ID=<KEY> --add
travis encrypt AWS_SECRET_ACCESS_KEY=<SECRET_ACCESS_KEY> --add
travis encrypt STATUSCAKE_APIKEY=<API_KEY> --add
travis encrypt STATUSCAKE_USERNAME=<USERNAME> -add

<h3>To run the infrastructure</h3>

module "Insert_own_IDNAME" {
    source ="github.com/unknown54321/infra"
    name = "dominigeiger" // Or the name of your app
    buildpacks = [
        "heroku/java"
    ]
}
