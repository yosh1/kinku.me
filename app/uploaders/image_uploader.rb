class ImageUploader < CarrierWave::Uploader::Base
    include CarrierWave::RMagick
    process :resize_to_limit => [700, 700]
    process :convert => 'jpg'

    def extension_white_list
        %w(jpg jpeg gif png)
    end

    #ファイル名を変更し拡張子を同じにする
    def filename
        super.chomp(File.extname(super)) + '.jpg' 
    end

    def filename
        if original_filename.present?
            time = Time.now
            name = time.strftime('%Y%m%d%H%M%S') + '.jpg'
            name.downcase
        end
    end
end