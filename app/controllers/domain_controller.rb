class DomainController < ApplicationController
  
  def index
    if params[:sort]
      @sort=params[:sort]
    else
      @sort='alpha_sort_forward'
    end
    
    case @sort
    when 'alpha_sort_forward'
      @domains=Domain.alpha_sort_forward
    when 'alpha_sort_backward'
      @domains=Domain.alpha_sort_backward
    when 'expired'
      @domains=Domain.expired
    when 'expiring_soon'
      @domains=Domain.expiring_soon
    when 'expiring_later'
      @domains=Domain.expiring_later
    when 'newest_purchase'
      @domains=Domain.newest_purchase
    when 'oldest_purchase'
      @domains=Domain.oldest_purchase
    end
    
    @table_num=1
    @x=0
    @tables=false
    @table_size=24
    
  end

  def show
    @domain=Domain.find(params[:id])
  end

  def new
    @domain=Domain.new
  end

  def create
    @domain=Domain.new(domain_params)
    if @domain.save
      flash[:notice]="Domain created!"
      redirect_to({:action=>'show',:id=>@domain.id})
    else
      render('new')
    end
    
  end

  def edit
    @domain=Domain.find(params[:id])
  end
  
  def update
    @domain=Domain.find(params[:id])
    if @domain.update_attributes(domain_params)
      flash[:notice]="Domain Updated"
      redirect_to(:action=>'show',:id=>@domain.id)
    else
      render('edit')
    end
    
    
  end

  def delete
    @domain=Domain.find(params[:id])
  end
  
  def destroy
     @domain=Domain.find(params[:id]).destroy
    flash[:notice]="Domain Destroyed"
    redirect_to(:action=>'index')
  end
  
  private
    def domain_params
      params.require(:domain).permit(:domain_name,:domain_extensions,:owner,:project_name,:purchased_date,:expiration_date,:redirect,:redirect_url,:notes)
    end
end
