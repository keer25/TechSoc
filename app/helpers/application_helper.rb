module ApplicationHelper
	def page_title(title="")
		base_title = "Sarayu"
		if title.empty?
			base_title
		else
			title + " - " + base_title
		end
	end
end
