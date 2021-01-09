# https://creat4869.hatenablog.com/entry/2019/08/15/170109
module ApplicationHelper
  def default_meta_tags
    {
      site: 'ねこボード',
      title: 'ねこボード',
      reverse: true,
      separator: '|',
      description: 'かわいいねこの写真しか投稿してはいけないSNS「ねこボード」',
      keywords: 'ねこ',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'ねこボード',
        title: 'ねこボード',
        description: 'かわいいねこの写真しか投稿してはいけないSNS「ねこボード」', 
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
      }
    }
  end
end