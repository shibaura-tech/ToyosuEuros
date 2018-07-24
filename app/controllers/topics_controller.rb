class TopicsController < ApplicationController
  def index
  end

  def list
    @topics = Topic.all
  end

  def show
		@topics =Topic.all
    @topic = Topic.find(params[:id])
    @new_post = Post.new(topic_id: params[:id])
    @posts = Post.where(topic_id: params[:id])
    @user_id = current_user.id
    #Todo グローバル変数でない方法を考える
    $topic_id = params[:id]
  end

  def create
    @new_topic = Topic.new
    if request.post?
      @topic = Topic.new(params[:topic].permit(:title))
      @topic.save
      redirect_to topics_index_path
    end
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_index_path
  end
end
