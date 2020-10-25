fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子", "夏子"]
0.upto(3) do |idx|
    Tel.create(
        number: (idx+1),
        full_name: "#{fnames[idx]} #{gnames[idx]}",
        tel_num: "080-4547-1829"
    )
end