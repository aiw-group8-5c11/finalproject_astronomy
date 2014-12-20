class HomeController < ApplicationController

  def index
    @title="Trang Chủ"
    @planet=Detail.all
    @news=News.order("created_at DESC").limit(4)
    # @element=Element.find (params [:@planet.element_id])
  end
  def contact
    @title="Liên Hệ"
  end
  def about
    @title="Giới Thiệu"
  end
  def news_post
    @post=News.find(params[:id])
    @title=@post.title
    @news=News.order("created_at DESC").limit(2)
  end
  def mission
    @title="Nhiệm vụ thăm dò́"
    @mission=Mission.all
  end
  def astroTg
    @title="Thiên văn thế giớí"
    @post=News.where(:category=>"2")
    @news=News.order("created_at DESC").limit(2)
  end
  def astroVn
    @title="Thiên văn Việt Naḿ"
    @post=News.where(:category=>"1")
    @news=News.order("created_at DESC").limit(2)
  end
  def news
    @title="Tin tức"
  end
  def question
    @title="Câu Hỏi Thường Gặp"
  end
  def discovery
    @title="Khám Phá"
  end
  def knowledge
    @title="Kiến Thức"
  end
end
