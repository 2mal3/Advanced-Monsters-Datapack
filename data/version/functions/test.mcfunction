# Description: Testing version
# Called by: ...
# Datapack library by 2mal3

# add scoreboad
scoreboard objectives add version dummy
scoreboard players set $version version 0


# test versions
# 1.13
function version:versions/1.13/0
function version:versions/1.13/1
function version:versions/1.13/2

# 1.14
function version:versions/1.14/0
function version:versions/1.14/1
function version:versions/1.14/2
function version:versions/1.14/3
function version:versions/1.14/4

# 1.15
function version:versions/1.15/0
function version:versions/1.15/1
function version:versions/1.15/2

# 1.16
function version:versions/1.16/0
function version:versions/1.16/1
function version:versions/1.16/2

# The version is stored under version in scoreboard version_library in X.XX.X format.
