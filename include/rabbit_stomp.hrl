%% The contents of this file are subject to the Mozilla Public License
%% Version 1.1 (the "License"); you may not use this file except in
%% compliance with the License. You may obtain a copy of the License
%% at https://www.mozilla.org/MPL/
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and
%% limitations under the License.
%%
%% The Original Code is RabbitMQ.
%%
%% The Initial Developer of the Original Code is GoPivotal, Inc.
%% Copyright (c) 2007-2020 VMware, Inc. or its affiliates.  All rights reserved.
%%

-record(stomp_configuration, {default_login,
                              default_passcode,
                              force_default_creds = false,
                              implicit_connect,
                              ssl_cert_login}).

-define(SUPPORTED_VERSIONS, ["1.0", "1.1", "1.2"]).

-define(INFO_ITEMS,
        [conn_name,
         connection,
         connection_state,
         session_id,
         channel,
         version,
         implicit_connect,
         auth_login,
         auth_mechanism,
         peer_addr,
         host,
         port,
         peer_host,
         peer_port,
         protocol,
         channels,
         channel_max,
         frame_max,
         client_properties,
         ssl,
         ssl_protocol,
         ssl_key_exchange,
         ssl_cipher,
         ssl_hash]).

-define(STOMP_GUIDE_URL, <<"https://rabbitmq.com/stomp.html">>).
