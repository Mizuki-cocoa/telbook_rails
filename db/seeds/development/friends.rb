fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子", "夏子"]
0.upto(29) do |idx|
    Friend.create(
        name: "John#{idx+1}",
    )
  end