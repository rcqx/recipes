![](https://img.shields.io/badge/Microverse-blueviolet)

## Recipe App

> The Recipe app keeps track of all your recipes and ingredients. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With

- Ruby on Rails
- PostgreSQL
- devise - for authentication
- cancancan - for authorization
- Bullet - for N+1 queries

### Getting Started

To get a local copy up and running follow these simple steps:

### Prerequisites

- Ruby installed
- PostgreSQL dbms running

## Setup Project

- Open your terminal and navigate to the folder you would like to save the project.

- Type these commands into the terminal:

```
git clone https://github.com/jr-cast/recipes.git
cd recipe-app
bundle install
```

- You will need a `.env` file before you install and run the project. The `.env` file contains environment variables needed to deploy the webpage. There is a commented `.env.example` file you can use as a guide to configure your own. Type the following command into the terminal (or Git Bash, if using Windows) to create your `.env` file:

```
cp .env.example .env
rails secret
```

- Edit file .env

  - Replace the value for the variable DEVISE_JWT_SECRET_KEY with the value returned by the `rails secret` command.
  - Provide values for DATABASE_HOST, DATABASE_USER and DATABASE_PASSWORD

- Type this command into the terminal to reset the database:

```
rails db:reset
```

### Run application

- Type this commands into the terminal:

```
rails server
```

- Open your web browser at [http://127.0.0.1:3000/](http://127.0.0.1:3000/)

### Run tests

- Type these commands into the terminal:

```
rspec spec -f doc lib
```

## Authors

## Author 1
👤 **Jose Ramon**

- GitHub: [@jr-cast](https://github.com/jr-cast)
- Twitter: [@]()
- LinkedIn: []()


## Author 2
👤 **Fatima Zahir**

- GitHub: [@Fatima-hub333](https://github.com/Fatima-hub333)

## Author 3
👤 ****

- GitHub: [@fabianofrank](https://github.com/fabianofrank)
- Twitter: []()
- LinkedIn: []()

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jr-cast/recipes/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/) for the motivation.
- 