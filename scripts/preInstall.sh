#set env vars
#set -o allexport; source .env; set +o allexport;

cat << EOT >> ./.env

APP_KEY=
EOT


yes | docker-compose run -T --rm app php artisan key:generate