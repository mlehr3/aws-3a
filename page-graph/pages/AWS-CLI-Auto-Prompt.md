tags:: AWS-API-CLI
date-created:: [[2024-Q4]]
	- The [AWS CLI Auto Prompt](AWS-CLI-Auto-Prompt) is a powerful interactive shell built into AWS CLI to assist in writing CLI commands.
	  id:: 6757365f-0d3f-4296-9036-d01663ac9ede
	  
	  Availiable in AWS CLI V2
	- ---
	- #### Ways to Activate
	  collapsed:: true
		- By Command with `--cli-auto-prompt` flag
		- Environment Variables
			- `export AWS_CLI_AUTO_PROMPT=on-partial`
		- Config File
			- `cli_auto_prompt = on`
	- #### Features
	  collapsed:: true
		- Fuzzy Search
		- Command Completion
		- Parameter Completion
		- Resource Completion
		- Shorthand Completion
		- File Completion
		- Region Completion
		- Profile Completion
		- Documentaion Panel
		- Projected Output Panel
		- Command History
		- Two different modes of activation
		- Works anywhere AWS CLI is installled
	- #### Modes
	  collapsed:: true
		- *Full Mode*
			- Not recommended, will come up when running bash scripts
			- Though it can be used to *confirm*
		- *Partial Mode* (Best Practice)
			- Only activates auto-prompt mode when command is incomplete or cannot run due to client-side validation errors
	- #### Keyboard Shortcuts
	  collapsed:: true
		- `[F3]` - Documentation Pane Up
		- `[F2]` - Toggle Panes
		- `j` - up
		- `k` - down
		- More
		  collapsed:: true
			- `F5` Toggles Output Pane
				- Tables
			- `Ctrl + R` Previous AWS CLI History
- #### Cards
	- [[card]] | What is the interactive AWS CLI shell called? | [[SAA]]
	  collapsed:: true
		- ((6757365f-0d3f-4296-9036-d01663ac9ede))