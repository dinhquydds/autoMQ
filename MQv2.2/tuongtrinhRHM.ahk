#SingleInstance Force
Name := "d:\tuongtrinhRHM.exe"


Download "https://raw.githubusercontent.com/dinhquydds/autoMQ/main/version.txt", "d:\latestVersion.txt"

try {
    latestVersion := FileRead("d:\latestVersion.txt")
} catch Error as e {
    latestVersion := ""
}

try {
    currentVersion := FileRead("d:\version.txt")
} catch Error as e {
    currentVersion := ""
}

if (currentVersion = "") or (currentVersion < latestVersion)
{
    Download "https://github.com/dinhquydds/autoMQ/raw/main/main.exe", "D:\tuongtrinhRHM.exe"
    Download "https://github.com/dinhquydds/autoMQ/raw/main/version.txt", "d:\version.txt"
}
try {
    Run Name
} catch Error as e {
    MsgBox "Không tải được file, kiểm tra kết nối mạng"
}

ExitApp