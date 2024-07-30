#set env vars
set -o allexport; source .env; set +o allexport;

APP_KEY=$(yes | docker-compose run -T --rm app php artisan key:generate --show)

cat << EOT >> ./.env

APP_KEY=${APP_KEY}
EOT
