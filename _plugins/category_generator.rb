module Jekyll
    class CategoryPageGenerator < Generator
      safe true
  
      def generate(site)
        site.categories.each do |category, posts|
          # 카테고리 이름을 슬러그화하여 경로에 적용
          category_slug = category.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
          category_dir = File.join('categories', category_slug)
  
          # 디버깅 메시지 추가
          puts "Generating page for category: #{category} -> #{category_dir}"
  
          # 각 카테고리별로 게시물을 표시할 페이지를 생성
          site.pages << CategoryPage.new(site, site.source, category_dir, category, posts)
        end
      end
    end
  
    class CategoryPage < Page
      def initialize(site, base, dir, category, posts)
        @site = site
        @base = base
        @dir = dir
        @name = 'index.html'
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'category.html')
        self.data['category'] = category
        self.data['title'] = "#{category} 카테고리의 게시물"
  
        # 현재 카테고리의 게시물만 할당
        self.data['posts'] = posts
      end
    end
  end
  