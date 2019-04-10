all:
	sed 's/<color>/Dark/g; \
	    s/"<dark>"/true/g; \
	    s/<background_highlights>/073642/g; \
	    s/<background_highlights_lighter>/074855/g; \
	    s/<background>/002b36/g; \
	    s/<primary_text>/839496/g; \
	    s/<secondary_text>/586e75/g; \
	    s/<emphasized_content>/93a1a1/g; \
	    s/<inverse_background_highlights>/eee8d5/g; \
	    s/<inverse_background>/fdf6e3/g; \
	    s/<inverse_primary_text>/657b83/g; \
	    s/<inverse_secondary_text>/93a1a1/g; \
	    s/<inverse_emphasized_content>/586e75/g;' \
	    solarized_template.theme.json > src/solarized_dark_theme.theme.json
	sed 's/<color>/Light/g; \
	    s/"<dark>"/false/g; \
	    s/<background_highlights>/eee8d5/g; \
	    s/<background_highlights_lighter>/cdc8b7/g; \
	    s/<background>/fdf6e3/g; \
	    s/<primary_text>/657b83/g; \
	    s/<secondary_text>/93a1a1/g; \
	    s/<emphasized_content>/586e75/g; \
	    s/<inverse_background_highlights>/073642/g; \
	    s/<inverse_background>/002b36/g; \
	    s/<inverse_primary_text>/839496/g; \
	    s/<inverse_secondary_text>/586e75/g; \
	    s/<inverse_emphasized_content>/93a1a1/g;' \
	    solarized_template.theme.json > src/solarized_light_theme.theme.json

clean:
	$(RM) -r solarized_theme.jar src/solarized_* out/
