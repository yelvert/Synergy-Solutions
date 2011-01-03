class PageTextsController < ApplicationController
  before_filter :authenticate_admin!
  layout 'administration'
  # GET /page_texts
  # GET /page_texts.xml
  def index
    @page_texts = PageText.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @page_texts }
    end
  end

  # GET /page_texts/1
  # GET /page_texts/1.xml
  def show
    @page_text = PageText.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page_text }
    end
  end

  # GET /page_texts/new
  # GET /page_texts/new.xml
  def new
    @page_text = PageText.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page_text }
    end
  end

  # GET /page_texts/1/edit
  def edit
    @page_text = PageText.find(params[:id])
  end

  # POST /page_texts
  # POST /page_texts.xml
  def create
    @page_text = PageText.new(params[:page_text])

    respond_to do |format|
      if @page_text.save
        format.html { redirect_to(@page_text, :notice => 'Page text was successfully created.') }
        format.xml  { render :xml => @page_text, :status => :created, :location => @page_text }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page_text.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /page_texts/1
  # PUT /page_texts/1.xml
  def update
    @page_text = PageText.find(params[:id])

    respond_to do |format|
      if @page_text.update_attributes(params[:page_text])
        format.html { redirect_to(@page_text, :notice => 'Page text was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page_text.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /page_texts/1
  # DELETE /page_texts/1.xml
  def destroy
    @page_text = PageText.find(params[:id])
    @page_text.destroy

    respond_to do |format|
      format.html { redirect_to(page_texts_url) }
      format.xml  { head :ok }
    end
  end
end
