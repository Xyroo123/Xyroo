
gg.setVisible(true)
-- 1D = 86400
-- 1H = 3600
local durasiWaktu = 86400 -- 1 jam 1 menit
local lokasiFileWaktu = "/storage/emulated/0/Telegram/Telegram Files/time.txt"
local lokasiFileAlert = "/storage/emulated/0/alert.txt"

-- Fungsi untuk memulai waktu
local function mulaiWaktu()
    local file = io.open(lokasiFileWaktu, "r")
    if file then
        local waktuMulai = tonumber(file:read("*a"))
        file:close()
        return waktuMulai
    else
        local waktuMulai = os.time()
        file = io.open(lokasiFileWaktu, "w")
        file:write(tostring(waktuMulai))
        file:close()
        return waktuMulai
    end
end

-- Fungsi untuk memeriksa waktu habis
local function waktuHabis(waktuMulai)
    return os.time() > (waktuMulai + durasiWaktu)
end

-- Fungsi untuk memeriksa alert sudah ditampilkan
local function alertSudahDitampilkan()
    local file = io.open(lokasiFileAlert, "r")
    if file then
        file:close()
        return true
    else
        return false
    end
end

-- Fungsi untuk menampilkan alert waktu habis
local function tampilkanAlertHabis()
    local file = io.open(lokasiFileAlert, "w")
    file:write("Hello world")
    file:close()
end

-- Lokasi file durasi waktu
local lokasiFileWaktuDurasi = "/storage/emulated/0/Telegram/Telegram Files/durasi_waktu.txt"

-- Fungsi untuk memuat durasi waktu
local function muatDurasiWaktu()
    local file = io.open(lokasiFileWaktuDurasi, "r")
    if file then
        durasiWaktu = tonumber(file:read("*a"))
        file:close()
    else
        durasiWaktu = os.time() + 86400 -- nilai default (1 hari dari sekarang)
        simpanDurasiWaktu()
        gg.toast("Waktu script diperbarui!")
    end
end

-- Fungsi untuk menyimpan durasi waktu
local function simpanDurasiWaktu()
    local file = io.open(lokasiFileWaktuDurasi, "w")
    if file then
        file:write(tostring(durasiWaktu))
        file:close()
    else
        gg.alert("Gagal Menganti Waktu Script!!!")
    end
end

-- Muat durasi waktu saat pertama kali menjalankan script
muatDurasiWaktu()


-- Fungsi utama
function main()
    local waktuMulai = mulaiWaktu()
    if waktuHabis(waktuMulai) and not alertSudahDitampilkan() then
        gg.alert("Script expired!")
        tampilkanAlertHabis()
    end

    local sisaWaktu = (waktuMulai + durasiWaktu) - os.time()
    local waktuTunggu = string.format("%02d:%02d:%02d", sisaWaktu // 3600, (sisaWaktu % 3600) // 60, sisaWaktu % 60)

    -- Menu utama
    local pilihan = gg.multiChoice({
    waktuHabis(waktuMulai) and "(Disabled)" or "ᴠɪᴘ ᴍᴇɴᴜ", --1
    waktuHabis(waktuMulai) and "(Disabled)" or "ᴜɴʟᴏᴄᴋ ᴛʀᴜᴄᴋ ᴍᴇɴᴜ v2", --2
    waktuHabis(waktuMulai) and "(Disabled)" or "ʟᴇᴠᴇʟ ᴜᴘ ɪɴʟᴏʙʙʏ-ɪɴɢᴀᴍᴇ v2 ᴍᴇɴᴜ", --3
    waktuHabis(waktuMulai) and "(Disabled)" or "sᴇᴛᴛɪɴɢ ᴛʀᴜᴄᴋ ᴍᴇɴᴜ", --4
    waktuHabis(waktuMulai) and "(Disabled)" or "ᴛʀᴜᴄᴋ ɢʟɪᴛᴄʜ ᴍᴇɴᴜ", --5
    waktuHabis(waktuMulai) and "(Disabled)" or "ʀᴇᴍᴏᴛᴇ ᴄᴀᴍᴇʀᴀ ᴍᴇɴᴜ", --6
    waktuHabis(waktuMulai) and "(Disabled)" or "ʟᴏᴀᴅ ʀᴇꜱᴛᴀʀᴛ ᴍᴇɴᴜ", --7
    waktuHabis(waktuMulai) and "(Disabled)" or "ᴀɴᴛɪ ᴅᴀᴍᴀɢᴇ ᴍᴇɴᴜ", --8
    waktuHabis(waktuMulai) and "(Disabled)" or "ᴀɴᴛɪ ʀɪᴏᴛ-ᴡᴀʟʟʜᴀᴄᴋ ᴍᴇɴᴜ", --9
    waktuHabis(waktuMulai) and "(Disabled)" or "ʀɪᴏᴛ v3 ᴍᴇɴᴜ", --10
    waktuHabis(waktuMulai) and "(Disabled)" or "ᴄᴏʟᴏʀᴇᴅ ᴡʀɪᴛɪɴɢ ᴍᴇɴᴜ", --11
    waktuHabis(waktuMulai) and "(Disabled)" or "ʟᴇɴɢᴛʜᴇɴ ᴛʜᴇ ᴡʀɪᴛɪɴɢ ɪɴ ᴛʜᴇ ʀᴏᴏᴍ", --12
    waktuHabis(waktuMulai) and "(Disabled)" or "sᴇᴛᴛɪɴɢ ʀᴏᴏᴍ ᴍᴇɴᴜ", --13
    waktuHabis(waktuMulai) and "(Disabled)" or "ᴇxɪᴛ ʀᴛʜᴅ ɢᴀᴍᴇ", --14
    waktuHabis(waktuMulai) and "(Disabled)" or "rєturn єхít", --15
    "Ubah Waktu Script", --16
    "rєturn єхít" --17
}, nil, os["date"]("#EXPERID | "..waktuTunggu.."\nDATE : %A %d %B %Y\nTIME : %H:%M:%S %p\n═══════════════════════\n|| Game : "..gg.getTargetInfo()["label"] .. " [".. gg.getTargetInfo()["versionName"] .."]\n|| Package : "..gg.getTargetInfo()["packageName"].."\n|| Credit : Xyroo_Vinaa!!\n═══════════════════════"))

if pilihan == nil then
gg.toast(" ×× Cancelled! ×× ")
elseif pilihan[1] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu1() end
elseif pilihan[2] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu2() end
elseif pilihan[3] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu3() end
elseif pilihan[4] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu4() end
elseif pilihan[5] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu5() end
elseif pilihan[6] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu6() end
elseif pilihan[7] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu7() end
elseif pilihan[8] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu8() end
elseif pilihan[9] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu9() end
elseif pilihan[10] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu10() end
elseif pilihan[11] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu11() end
elseif pilihan[12] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu12() end
elseif pilihan[13] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu13() end
elseif pilihan[14] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu14() end
elseif pilihan[15] == true then
if waktuHabis(waktuMulai) then gg.alert("Script expired!")
else Menu15() end
elseif pilihan[16] == true then
ubahWaktu()
elseif pilihan[17] == true then
    keluar()
end
end


-- Fungsi menu
function Menu1() 
gg.alert("Selesai! 1") 
end

function Menu2() 
gg.alert("Selesai! 2") 
end

function Menu3() 
gg.alert("Selesai! 3") 
end

function Menu4() 
gg.alert("Selesai! 4")
end

function Menu5() 
gg.alert("Selesai! 5") 
end

function Menu6() 
gg.alert("Selesai! 6") 
end

function Menu7() 
gg.alert("Selesai! 7") 
end

function Menu8() 
gg.alert("Selesai! 8") 
end

function Menu9() 
gg.alert("Selesai! 9") 
end

function Menu10() 
gg.alert("Selesai! 10") 
end

function Menu11() 
gg.alert("Selesai! 11") 
end

function Menu12() 
gg.alert("Selesai! 12") 
end

function Menu13() 
gg.alert("Selesai! 13") 
end

function Menu14() 
gg.alert("Selesai! 14") 
end

function Menu15() 
gg.alert("Selesai! 15") 
end

function ubahWaktu()
local waktuBaru = gg.prompt({ "Masukkan waktu baru (detik):" }, {"Waktu" })
if waktuBaru then
if tonumber(waktuBaru[1]) ~= nil then
durasiWaktu = tonumber(waktuBaru[1])
simpanDurasiWaktu()
gg.toast("Waktu berhasil diubah!")
else
gg.alert("Error", "Input harus angka!")
end
else
gg.alert("Error", "Input tidak boleh kosong!")
end
end

function keluar() 
_G ["gg"]["setVisible"](true)
_G ["print"](os.date("%H:%M:%S %p ⌚️%A, %d %B %Y\n\n➣ 𝙹𝙸𝙺𝙰 𝙰𝙳𝙰 𝚈𝙶 𝙼𝙰𝚄 𝙳𝙸 𝚃𝙰𝙽𝚈𝙰𝙺𝙰𝙽 𝙷𝚄𝙱𝚄𝙽𝙶𝙸 𝙺𝙰𝙼𝙸\n➣ 𝙽𝙾𝙼𝙾𝚁 𝚆𝙰 = 089530227443\n➣ 𝚃𝙴𝚁𝙸𝙼𝙰 𝙺𝙰𝚂𝙸𝙷 𝚂𝚄𝙳𝙰𝙷 𝙼𝙴𝙼𝙱𝙴𝙻𝙸 𝚂𝙲𝚁𝙸𝙿𝚃 𝙳𝙰𝚁𝙸 𝙺𝙰𝙼𝙸\n〖𝚂𝙰𝙼𝙿𝙰𝙸 𝙹𝚄𝙼𝙿𝙰 𝙺𝙰𝚆𝙰𝙽)"))
_G ["print"](os.date("╭╾•Today : %A, %d %B %Y"))
_G ["print"]("")
_G ["print"](os.date("╰╾•Time : %H : %M : %S"))
_G ["print"]("========== ᴛʜᴀɴᴋs Hyroo ᴜsᴇʀs ==========")
return os.exit(-999) 
end


while true do
if gg.isVisible(true) then
gg.setVisible(false)
main()
end
end
      
