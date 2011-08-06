module SubmissionsHelper
  def sort_link(title, column, column2=nil)
    sort_dir = params[:d] == 'ASC' ? 'DESC' : 'ASC'
    unless column2
      link_to title, request.parameters.merge( {:c => column, :d => sort_dir} )
    else
      link_to title, request.parameters.merge( {:c1 => column, :c2 => column2, :d => sort_dir} )
    end
  end
  

end
