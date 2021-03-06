
ALL_FILES=\
    batavia/batavia.js \
    batavia/utils.js \
    batavia/modules/dis.js \
    batavia/modules/dom.js \
    batavia/modules/marshal.js \
    batavia/modules/inspect.js \
    batavia/modules/sys.js \
    batavia/modules/time.js \
    batavia/core/Block.js \
    batavia/core/builtins.js \
    batavia/core/Cell.js \
    batavia/core/Code.js \
    batavia/core/Exception.js \
    batavia/core/Frame.js \
    batavia/core/Function.js \
    batavia/core/PYCFile.js \
    batavia/VirtualMachine.js \

.PHONY: all clean

all: batavia.js batavia.min.js

clean:
	rm batavia.js batavia.min.js

batavia.js: $(ALL_FILES)
	cat $(ALL_FILES) > batavia.js

batavia.min.js: batavia.js
	python -m jsmin batavia.js > batavia.min.js
