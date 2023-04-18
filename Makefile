PHANTONUML_SOURCE := $(wildcard diagrams/plantuml/puml/*.puml)
PHANTOMUML_TARGET := $(subst /puml/,/svg/,$(patsubst %.puml,%.svg,${PHANTONUML_SOURCE}))

.PHONY: all clean

all: generate-plantuml-diagrams

clean:
	rm -f $(PHANTOMUML_TARGET)

do-get-plantuml:
	wget -O- https://api.github.com/repos/plantuml/plantuml/releases/latest -q | grep -oP '(?<=")https://[^"]+plantuml\.jar(?=")' | xargs wget -O .lib/plantuml.jar.dl && mv .lib/plantuml.jar.dl .lib/plantuml.jar

get-plantuml:
	if [ ! -f .lib/plantuml.jar ]; then make do-get-plantuml; fi

diagrams/plantuml/svg/%.svg: diagrams/plantuml/puml/%.puml
	make get-plantuml
	java -jar .lib/plantuml.jar -DRELATIVE_INCLUDE="relative" $< -o '../svg/' -tsvg

generate-plantuml-diagrams: $(PHANTOMUML_TARGET)
