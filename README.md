How it started.

1. Clone the repository

```
git@github.com:mnetke/Image_scraper.git
```

2. Enter the project directory
```
cd Image-Scraper
```
3. Install dependencies
```
$ bundle install
```
4. run rake task with valid web url.
```
$ rake image_scraper:scrap[param]
```
eg.
```
$rake image_scraper:scrap[https://developers.google.com/speed/webp/gallery]
```
O/P: 
```
Images from https://developers.google.com/speed/webp/gallery
["https://developers.google.com/speed/webp/images/webp-devsite-icon.png",
 "https://developers.google.com/speed/webp/images/webp-devsite-icon.png",
 "https://www.gstatic.com/webp/gallery3/1.sm.png",
 "https://www.gstatic.com/webp/gallery3/1_webp_ll.sm.png",
 "https://www.gstatic.com/webp/gallery3/1_webp_a.sm.png",
 "https://www.gstatic.com/webp/gallery/4.sm.jpg",
 "https://www.gstatic.com/webp/gallery/4.sm.webp",
 "https://www.gstatic.com/devrel-devsite/prod/v45f61267e22826169cf5d5f452882f7812c8cfb5f8b103a48c0d88727908b295/developers/images/lockup-developers.svg"]
 ```
