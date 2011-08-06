module SubmissionsHelper
  def sort_link(title, column, column2=nil)
    sort_dir = params[:d] == 'ASC' ? 'DESC' : 'ASC'
    request.parameters.reject! {|param| param == "c1" or param == "c2"}
    unless column2
      link_to title, request.parameters.merge( {:c1 => column, :d => sort_dir} )
    else
      link_to title, request.parameters.merge( {:c1 => column, :c2 => column2, :d => sort_dir} )
    end
  end
  

end
