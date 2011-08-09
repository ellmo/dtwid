module SubmissionsHelper

  def sort_link(title, column, column2=nil, search=nil, episode=nil)
    sort_dir = params[:d] == 'ASC' ? 'DESC' : 'ASC'
    request.parameters.reject! do |param|
      param == "c" or param == "c2" or param == "e"
    end
    search = params[:s] unless search
    param_hash = {:c => column, :d => sort_dir, :c2 => column2, :s => search, :e => episode}
    link_to title, request.parameters.merge( param_hash )
  end
  
end
