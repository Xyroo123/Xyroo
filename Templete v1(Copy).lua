local setVis=gg.setVisible
local isVis=gg.isVisible
local showmenu=false



local on = "      ⃢🔵 "
local off = "  🔴⃢     "
local TES = off
local TES1 = off
local TES2 = off
local TES3 = off

local timee = os.clock()
for i = 0, 0 do
end


_ENV ["gg"]["setVisible"](true)
_ENV ["gg"]["alert"]("PRESS GG LOGO TO OPEN MENU")
function START()
gg.setVisible(false)
gg.toast("ঔৣ͜͡➳ You know hyroo?")
local menu = gg.multiChoice({
	"ঔৣ͜͡➳ ᴠɪᴘ\nঔৣ͜͡➳ Lobby"..TES1, -- 1
    "ঔৣ͜͡➳ sᴘᴇᴇᴅ + ᴘᴏᴡᴇʀ\nঔৣ͜͡➳ Room"..TES, -- 2
    "ঔৣ͜͡➳ ᴡᴀʟʟʜᴀᴄᴋ\nঔৣ͜͡➳ Room"..TES2, -- 3
    "ঔৣ͜͡➳ ʟᴏᴀᴅ ʀᴇꜱᴛᴀʀt Bort\nঔৣ͜͡➳ Room" .. TES3, -- 4
    "ঔৣ͜͡➳ ʟᴇᴠᴇʟ ᴜᴘ\nঔৣ͜͡➳ ɪɴ ʟᴏʙʙʏ ʀᴏᴏᴍ",  --5
    "ঔৣ͜͡➳ ᴄʜᴀᴛ ᴡᴀʀɴᴀ\nঔৣ͜͡➳ Room", -- 6
    "ঔৣ͜͡➳ Exit" --7	
  },nil, os.date(([[
𝗦𝗰𝗿𝗶𝗽𝘁 𝗯𝘆 : Hyroo v1
𝗗𝗔𝗧𝗘 : %A %d %B %Y
𝗧𝗜𝗠𝗘 : %H:%M:%S %p
]])))
     if menu == nil then
      gg.toast("ঔৣ͜͡➳ You know hyroo?")
else
if menu[1] == true then -- 1
   vip() -- 1 
   end
  if menu[2] == true then -- 2
    speed() -- 2
  end
  if menu[3] == true then -- 3
    wall() -- 3
    end
   if menu[4] == true then -- 4
    Bort() -- 4
    end
   if menu[5] == true then -- 5
    UpLevel() -- 5
    end
   if menu[6] == true then -- 6
   Chat() -- 6
    end
  if menu[7] == true then -- 6
    Hyroo() -- 7
  end
  end
  BG = -1
end

function vip()
if TES1 == off then
_ENV ["gg"]["toast"]("@ʜɪʀᴏᴏ!!!")
_ENV ["gg"]["clearResults"]()
_ENV ["gg"]["setVisible"](false)
_ENV ["gg"]["setRanges"](gg["REGION_CODE_APP"])
_ENV ["gg"]["searchNumber"]("1.54999995232", gg["TYPE_FLOAT"])
_ENV ["gg"]["getResults"](1000)
_ENV ["gg"]["editAll"]("0", gg["TYPE_FLOAT"])
_ENV ["gg"]["toast"]("vip on")
_ENV ["gg"]["clearResults"]()
 TES1= on
    else
_ENV ["gg"]["clearResults"]()
_ENV ["gg"]["setVisible"](false)
_ENV ["gg"]["toast"]("off")
TES1 = off
end 
end


function speed()
if TES == off then
  d = gg.prompt({
    "ঔৣ͜͡➳ ꜱᴘᴇᴇᴅ Normal [0;1000]",
    "ঔৣ͜͡➳ ᴘᴏᴡᴇʀ ᴇɴɢɪɴᴇ [0;100]",
    "ʙᴀᴄᴋ"
  }, nil, {"number","number","checkbox"})
  if not d then
    return
  end--Iғ
  if d == nil then
    START()
  end--Iғ
  gg.clearResults()
  gg.setVisible(false)
  if d[3] then
    return gg.setVisible(true)
  end--Iғ
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.10000002384", gg.TYPE_FLOAT)
  gg.refineNumber("1.10000002384", gg.TYPE_FLOAT)
  gg.getResults(300)
  gg.editAll(d[1], gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("0.23080000281", gg.TYPE_FLOAT)
  gg.refineNumber("0.23080000281", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll(d[2], gg.TYPE_FLOAT) 
  gg.toast("on ✔")
  gg.clearResults()
  TES = on
  else
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(d[1], gg.TYPE_FLOAT)
  gg.getResults(300)
  gg.editAll("1.10000002384", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber(d[2], gg.TYPE_FLOAT)
  gg.getResults(300)
  gg.editAll("0.23080000281", gg.TYPE_FLOAT)
  gg.clearResults() 
  gg.toast("off ✔")
  TES = off
  end
  end
    
    
function wall()
if TES2 == off then
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.000001", gg.TYPE_FLOAT)  
gg.getResults(100) 
gg.editAll("-99", gg.TYPE_FLOAT) 
gg.clearResults()
gg.toast("on")
    TES2 = on
    else
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-99", gg.TYPE_FLOAT)  
gg.getResults(100) 
gg.editAll("0.000001", gg.TYPE_FLOAT) 
gg.clearResults()
gg.toast("off")
TES2 = off
end
end

function Bort()
if TES3 == off then
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2.24997456e-38", gg.TYPE_FLOAT)
gg.getResults(999)
gg.editAll("2",  gg.TYPE_FLOAT)
gg.toast("𝙾𝙽 ✓")
gg.clearResults() 
TES3 = on
else
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2", gg.TYPE_FLOAT)
gg.getResults(999)
gg.editAll("2.24997456e-38",  gg.TYPE_FLOAT)
gg.toast("OFF ✓")
TES3 = off
end
end

function UpLevel()
local hiroo=gg.prompt({
	" ꜱᴄʀɪᴘᴛ ᴜᴘ ʟᴇᴠᴇʟ ʜɪʀᴏᴏ",
	},{"Ketik/Tulis\nEXP\nYang\nDi\nSamping\nKiri",""},{"number",})
if hiroo == nil then else
gg.clearResults()
gg.clearList()
-- main code on
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(","..hiroo[1].."D;5000D:5" , gg.TYPE_DWORD)

local results = gg.getResults(1000)

--Debugging: Periksa apakah hasilnya ditemukan
if #results == 0 then
_ENV ["gg"]["alert"]("Value Not Found!!\nValue Tidak Ditemukan!!")
    return
end
-- Debugging: Tampilkan jumlah hasil yang ditemukan
_ENV ["gg"]["alert"]("Found " .. #results .. " Value.")

gg.processResume()
gg.alert("𝗧𝗘𝗞𝗔𝗡 𝗚𝗔𝗠𝗘 𝗚??𝗔𝗥𝗗𝗔𝗡")
while true do
    if isVis() == true then
      showmenu=true
      setVis(false)
    end
    if showmenu==true then
      showmenu=false
      local ikamonyet=gg.prompt({
	" ꜱᴄʀɪᴘᴛ ᴜᴘ ʟᴇᴠᴇʟ ʜɪʀᴏᴏ",
	},{"Tulis\nLagi\nEXP\nYang\nSebelum\nNya",""},{"number",})
if ikamonyet == nil then else
gg.processResume()
      gg.setRanges(gg.REGION_ANONYMOUS)
    gg.refineNumber(""..ikamonyet[1].."" , gg.TYPE_DWORD)
revert=gg.getResults(15,000, nil, nil, nil, nil, nil, nil, nil, nil)

local results = gg.getResults(1000)

--Debugging: Periksa apakah hasilnya ditemukan
if #results == 0 then
_ENV ["gg"]["alert"]("Value Not Found!!\nValue Tidak Ditemukan!!")
    return
end
-- Debugging: Tampilkan jumlah hasil yang ditemukan
_ENV ["gg"]["alert"]("Found " .. #results .. " Value.")

gg.processResume()
gg.alert("Tekan Saja Iklan Yang Di Samping Kiri Dan\nBuka Game Guardian Saat Iklan Dan Ketika/Tulis EXP Yang Kanan")
while true do
    if isVis() == true then
      showmenu=true
      setVis(false)
    end
    if showmenu==true then
      showmenu=false
      gg.processResume()
  d = gg.prompt({
    "👥ᴏɴᴡᴇʀ • ʜʏʀᴏᴏ\n ঔৣ͜͡➳ ᴛᴜʟɪꜱ ꜱᴇꜱᴜᴀɪ ᴅᴇɴɢᴀɴ ᴇxᴘ ʏᴀɴɢ ᴅɪ ꜱᴀᴍᴘɪɴɢ ᴋᴀɴᴀɴ ᴀɴᴅᴀ\n⚠️ ʙᴀᴛᴀꜱ ʜᴀɴʏᴀ 3/4 ʟᴇᴠᴇʟ ⚠️ ",
    "ʙᴀᴄᴋ"
  }, nil, {"number", "checkbox"})
  if not d then
    return
  end--Iғ
  if d == nil then
    A1()
  end--Iғ
  gg.processResume()
  gg.setVisible(false)
  if d[2] then
    return gg.setVisible(true)
  end--Iғ
  gg.setRanges(gg.REGION_ANONYMOUS)
gg.editAll(d[1].."" , gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.toast("Sukses ✔")
end end end end end end end 



function Chat()
Bae = gg.multiChoice({
	"ঔৣ͜͡➳ ʏᴇʟʟᴏᴡ",
	"ঔৣ͜͡➳ ғᴜᴄʜsɪᴀ  ",
	"ঔৣ͜͡➳ ʙʀᴏᴡɴ  ",
	"ঔৣ͜͡➳ ᴘᴜʀᴘʟᴇ  ",
	"ঔৣ͜͡➳ ᴏʀᴀɴɢᴇ ",
	"ঔৣ͜͡➳ ʀᴇᴅ ",
	"ঔৣ͜͡➳ ɢʀᴇᴇɴ ",
	"ঔৣ͜͡➳ ᴡʜɪᴛᴇ ",
	"ঔৣ͜͡➳ ɴᴀᴠʏ  ",
	"ঔৣ͜͡➳ ᴀǫᴜᴀ ",
	"ঔৣ͜͡➳ ʙᴀᴄᴋ",
},nil, os.date(([[
╔═════════════════════╗
ঔৣ͜͡➳ 𝗦𝗰𝗿𝗶𝗽𝘁 𝗯𝘆 : @𝗺𝗶𝘀𝘁𝗲𝗿𝗶𝘂𝘀𝘃𝟭
ঔৣ͜͡➳ 𝗗𝗔𝗧𝗘 : %d:%m:%y : 📢 %B %Y
ঔৣ͜͡➳ 𝗧𝗜𝗠𝗘 : %H:%M:%S 
╚═════════════════════╝
]])))
if Bae == nil then
Hyroo = -1
else
if Bae[1] then
gaie_1()
end
if Bae[2] then
gaie_2()
end
if Bae[3] then
gaie_3()
end
if Bae[4] then
gaie_4()
end
if Bae[5] then
gaie_5()
end
if Bae[6] then
gaie_6()
end
if Bae[7] then
gaie_7()
end
if Bae[8] then
gaie_8()
end
if Bae[9] then
gaie_9()
end
if Bae[10] then
gaie_10()
end
if Bae[11] == true then
START()
 end
 end
Hyroo = -1
end  
function gaie_1()
gg.copyText(("<COLOR=YELLOW><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end
function gaie_2()
gg.copyText(("<COLOR=FUCHSIA><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end
function gaie_3()
gg.copyText(("<COLOR=BROWN><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end
function gaie_4()
gg.copyText(("<COLOR=PURPLE><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end
function gaie_5()
gg.copyText(("<COLOR=ORANGE><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end
function gaie_6()
gg.copyText(("<COLOR=RED><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end
function gaie_7()
gg.copyText(("<COLOR=GREEN><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end
function gaie_8()
gg.copyText(("<COLOR=WHITE><SIZE=100>@You Know Hyroo?</SIZE></COLOR>")) 
gg.alert("Done✔")
end

  
function Hyroo()
_ENV ["gg"]["setVisible"](true)
print(("ঔৣ͜͡➳ Waktu Saat Memakai Script 〗"..string.format("%.2f",os.clock() - timee).." seconds"))
gg.alert(os.date("%H:%M:%S %p ⌚️%A, %d %B %Y\n\n➣ 𝙹𝙸𝙺𝙰 𝙰𝙳𝙰 𝚈𝙶 𝙼𝙰𝚄 𝙳𝙸 𝚃𝙰𝙽𝚈𝙰𝙺𝙰𝙽 𝙷𝚄𝙱𝚄𝙽𝙶𝙸 𝙺𝙰𝙼𝙸\n➣ 𝙽𝙾𝙼𝙾𝚁 𝚆𝙰 = 089530227443\n➣ 𝚃𝙴𝚁𝙸𝙼𝙰 𝙺𝙰𝚂𝙸𝙷 𝚂𝚄𝙳𝙰?? 𝙼𝙴𝙼𝙱𝙴𝙻𝙸 𝚂𝙲𝚁𝙸𝙿𝚃 𝙳𝙰𝚁𝙸 𝙺𝙰𝙼𝙸\n〖𝚂𝙰𝙼𝙿𝙰𝙸 𝙹𝚄𝙼𝙿𝙰 𝙺𝙰𝚆??𝙽\n [ ঔৣ͜͡➳ Waktu Saat Memakai Script 〗"..string.format("%.2f",os.clock() - timee).." seconds"))
print("ঔৣ͜͡➳ Script Nguli By HyrooTzy🇮🇩")
return os.exit(0)
end

while true do
  if gg.isVisible(true) then
    BG = 1
    gg.setVisible(false)
  end
  if BG == 1 then
    START()
  end
end
