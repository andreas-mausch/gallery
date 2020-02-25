# Gallery

## Run locally

```
bundle install
bundle exec jekyll serve --host=0.0.0.0
```

## Add images

- Create a new post in *./_posts/*
- Create a new folder in *./assets/gallery/*
- Copy images to that folder
- Regenerate thumbnails (see below)

## Generate thumbnails

Make sure you got *ImageMagick* installed.

```
./generate-thumbnails.sh
```
