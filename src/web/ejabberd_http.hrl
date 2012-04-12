%%%----------------------------------------------------------------------
%%%
%%% ejabberd, Copyright (C) 2002-2012   ProcessOne
%%%
%%% This program is free software; you can redistribute it and/or
%%% modify it under the terms of the GNU General Public License as
%%% published by the Free Software Foundation; either version 2 of the
%%% License, or (at your option) any later version.
%%%
%%% This program is distributed in the hope that it will be useful,
%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%%% General Public License for more details.
%%%
%%% You should have received a copy of the GNU General Public License
%%% along with this program; if not, write to the Free Software
%%% Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
%%% 02111-1307 USA
%%%
%%%----------------------------------------------------------------------

-record(request, {method,
		  path,
		  q = [],
		  us,
		  auth,
		  lang = "",
		  data = "",
		  ip,
		  host, % string()
		  port, % integer()
		  tp, % transfer protocol = http | https
		  headers
		 }).


% Websocket Request
-record(ws, {
	    socket,						% the socket handling the request
	    sockmod,				% gen_tcp | tls
	    ws_autoexit,				% websocket process is automatically killed: true | false
	    ip,					% peer IP | undefined
	    vsn,						% {Maj,Min} | {'draft-hixie', Ver}
	    origin,						% the originator
	    host,						% the host
	    port,
	    path,						% the websocket GET request path
	    headers,						% [{Tag, Val}]
	    local_path,
	    q,
	    buf
    }).
