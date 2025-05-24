serve:
  bundle exec nanoc live --env=dev

build:
  bundle exec nanoc --env=prod

push:
  git push -u origin main
  git push -u gh main
