require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  def setup
    @category = Category.create(name: "sports")
  end

  test "should get categories index" do
    get :index
    assert_response :success
    #assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  #test "should create category" do
  #  assert_difference('Article.count') do
  #  post :create, article: { description: @article.description, title: @article.title }
  #  end

  #  assert_redirected_to article_path(assigns(:article))
  #end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

 # test "should get edit" do
 #   get :edit, id: @article
 #   assert_response :success
 # end

  #test "should update category" do
  #  patch :update, id: @article, article: { description: @article.description, title: @article.title }
  #  assert_redirected_to article_path(assigns(:article))
  #end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to categories_path
  end
end
