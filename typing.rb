#タイピング練習ができるコードです
qa = [
  "serverless architecture",
  "single page application",
  "amazon web service",
  "devops engineer",
  "Auto Scaling"
]
score = 0
puts "問題は#{ qa.length }問です。"
qa.shuffle!
#qa = qa.shuffleでも可。sampleとかでもok
#!がないとシャッフルにならないです。
start_time = Time.now
qa.each_with_index do |text, i| #カリキュラムに多分ないので解説あるとよきかと
  puts "第#{i+1}問"
  puts text
  while true do
    puts "入力してください↓"
    input = gets.chomp
      if text == input
        puts "正解"
        score += 20
        break
      else
        puts "入力ミス！！！"
        score -= 20
      end
  end
end
end_time = Time.now
time = end_time - start_time
puts "時間: #{time} sec"
puts "得点は#{score}点でした！お疲れ様でした！"