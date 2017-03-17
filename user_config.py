import sublime
import sublime_plugin


class UserConfigSetCommand(sublime_plugin.WindowCommand):
	def run(self):
		self.window.run_command('git_raw', {"command": "git config user.name Starli0n"})
		self.window.run_command('git_raw', {"command": "git config user.email Starli0n@users.noreply.github.com"})


class UserConfigOpenCommand(sublime_plugin.WindowCommand):
	def run(self):
		self.window.run_command('git_raw', {"command": "git config -e"})
