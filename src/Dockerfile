# Copyright © 2021 VERDOÏA Laurent
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

FROM python:3.10.1-slim-bullseye

LABEL org.label-schema.description="Another dockerized version of mkdocs" \
        org.label-schema.schema-version="1.0"

RUN pip install \
        --disable-pip-version-check \
        --no-cache-dir \
        mkdocs-material==7.3.3 \
        mkdocs==1.2.3

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["/usr/local/bin/mkdocs"]
