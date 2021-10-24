all: prepare data

prepare:
	./scripts/pip-update.sh

data: out.m3u8

out.m3u8: in.m3u8
	liveproxy --file in.m3u8 --file-output out.m3u8
