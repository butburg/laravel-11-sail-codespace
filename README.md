# Laravel 11 Codespace Template with Laravel Sail

## Overview

This repository serves as a ready-to-use template for Laravel 11 projects, specifically optimized for use with GitHub Codespaces and MySQL database, utilizing [Laravel Sail](https://laravel.com/docs/8.x/sail) for possible local development.

## Features

- Pre-configured setup for seamless integration with GitHub Codespaces (check setup.sh)
- Includes Laravel 11 with Sail
- Utilizes MySQL database for data storage
- Includes [Laravel Breeze](https://laravel.com/docs/8.x/starter-kits#breeze-and-inertia) for simple authentication scaffolding
- Utilizes [Laravel Mix](https://laravel.com/docs/8.x/mix) for asset compilation and management

## Usage

### Getting Started

1. Click on the "Use this template" button to create a new repository based on this template.

1. Once the repository is created, open it in GitHub Codespaces to start developing in a fully configured environment. 

1. Wait for the setup.sh to run. Ctrl + Shift + P type `Codespaces: View Creation Log` to see the progress.

1. Start the Docker containers with Sail: `sail up` (maybe you need to run `source ~/.bashrc` or simply open a new terminal)

1. Run in a new terminal the database migration `sail artisan migrate`

1. Optional run `sail npx mix watch` for laravel mix

### Local Development with Laravel Sail

For local development using Laravel Sail, follow these steps:

1. Clone the repository to your local machine.

2. Run the `./setup.sh`

3. Start the Docker containers with Laravel Sail: `./vendor/bin/sail up`

### Common Laravel Terminal Commands

- **`sail up`**: Starts the Docker containers defined in your Laravel Sail configuration file, allowing you to run your Laravel application locally using Docker.

- **`sail npx mix watch`**: Compiles and watches your assets for changes. Useful during development to automatically compile CSS and JavaScript assets as you make changes.

### Additional Useful Commands

- **`sail npm install && npm update`**: Installs npm dependencies and updates them if needed. Useful when adding or updating npm packages for your Laravel project.

- **`sail npm run dev`**: Compiles your assets for development. This command is typically used after installing new npm packages or making changes to your assets.

- **`sail artisan cache:clear`**: Clears the application cache. Useful when you need to clear cached data such as routes, views, and configurations.

- **`sail rm mysql`**: Stops and removes the MySQL container. Useful when you need to reset the MySQL container or troubleshoot database-related issues.

- **`sail artisan migrate`**: Runs database migrations. This command executes any outstanding migrations that have not yet been run, ensuring your database schema is up to date.

- **`sail ps`**: Lists all running Docker containers defined in your Laravel Sail configuration file. Useful for checking the status of your Docker containers.


## Customization
Feel free to customize this template to suit your specific project requirements. You can add additional dependencies, modify configuration files like the setup.sh, or integrate other services as needed.

## Feedback and Contributions

I welcome feedback and contributions from you to improve this template. If you have any suggestions, feature requests, or bug reports, please feel free to open an issue or submit a pull request.

Let's collaborate to make this template even more useful!


## From <a href="https://laravel.com" target="_blank">Laravel</a>:

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

 [Laravel Partners program](https://partners.laravel.com)


## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).


## License

The template is like laravel open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
