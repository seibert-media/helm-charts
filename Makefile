default: pkg clean

pkg:
	find . -type d -maxdepth 1 -exec helm package "{}" \; 2> /dev/null

clean:
	rm -f *.tgz

serve:
	helm serve