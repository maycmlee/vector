package metadata

remap: functions: is_regex: {
	category: "Type"
	description: """
		Check if the type of `value` is a regex.
		"""

	arguments: [
		{
			name:        "value"
			description: #"The value to check."#
			required:    true
			type: ["any"]
		},
	]
	internal_failure_reasons: []
	return: {
		types: ["boolean"]
		rules: [
			#"Returns `true` if `value` is a regex."#,
			#"Returns `false` if `value` is anything else."#,
		]
	}

	examples: [
		{
			title: "Valid regex"
			source: """
				is_regex(r'pattern')
				"""
			return: true
		},
		{
			title: "Non-matching type"
			source: """
				is_regex("a string")
				"""
			return: false
		},
	]
}
