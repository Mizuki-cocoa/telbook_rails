0.upto(3) do |idx|
    Tel.create(
        tel_num: "080-4547-1829",
        cellphone: (idx == 0)
    )
end