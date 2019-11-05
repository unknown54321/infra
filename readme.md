To run the infrastructure

module "Insert_own_IDNAME" {
    source ="github.com/unknown54321/infra"
    name = "dominigeiger" // Or the name of your app
    buildpacks = [
        "heroku/java"
    ]
}
