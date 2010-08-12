# Vertex shader code for fixed pipeline emulation
# S3C6410 FIMG-3DSE v.1.5
#
# Copyright 2010 Tomasz Figa <tomasz.figa@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Vertex shader version
vs_3_0

# FIMG version >= 1.2
fimg_version	0x01020000

# Model-view matrix
def c0, 0.0, 0.0, 0.0, 0.0
def c1, 0.0, 0.0, 0.0, 0.0
def c2, 0.0, 0.0, 0.0, 0.0
def c3, 0.0, 0.0, 0.0, 0.0

# Projection matrix
def c4, 0.0, 0.0, 0.0, 0.0
def c5, 0.0, 0.0, 0.0, 0.0
def c6, 0.0, 0.0, 0.0, 0.0
def c7, 0.0, 0.0, 0.0, 0.0

# Texture 0 matrix
def c8, 0.0, 0.0, 0.0, 0.0
def c9, 0.0, 0.0, 0.0, 0.0
def c10, 0.0, 0.0, 0.0, 0.0
def c11, 0.0, 0.0, 0.0, 0.0

# Texture 1 matrix
def c12, 0.0, 0.0, 0.0, 0.0
def c13, 0.0, 0.0, 0.0, 0.0
def c14, 0.0, 0.0, 0.0, 0.0
def c15, 0.0, 0.0, 0.0, 0.0

# Shader code
label start
# Transform position by model-view matrix
dp4 r0.x, c0, v0
dp4 r0.y, c1, v0
dp4 r0.z, c2, v0
dp4 r0.w, c3, v0
# Transform position by projection matrix
dp4 o0.x, c4, r0
dp4 o0.y, c5, r0
dp4 o0.z, c6, r0
dp4 o0.w, c7, r0
# Pass vertex color
mov o1, v1
# Return
ret
# End of shader code