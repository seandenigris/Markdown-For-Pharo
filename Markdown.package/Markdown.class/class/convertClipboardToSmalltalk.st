as yet unclassified
convertClipboardToSmalltalk
	<script>
	| md |
	md := Markdown new smalltalkCode: Clipboard clipboardText.
	Clipboard clipboardText: md.