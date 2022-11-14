extends Label


func update_experience_label(level, experience, experience_needed, experience_total):
	text = """Level: %s
	
			Experience: %s
			Experience to next level: %s
			
			Total Experience: %s
			""" % [level, experience, experience_needed, experience_total]
