require 'rails_helper'

RSpec.describe 'reviews/index', type: :view do
  let(:popular) do
    {
"page":1,"total_results":19998,"total_pages":1000,"results":[{"original_name":"Game of Thrones","genre_ids":[18,10759,10765],"name":"Game of Thrones","popularity":555.408,"origin_country":["US"],"vote_count":5785,"first_air_date":"2011-04-17","backdrop_path":"/qsD5OHqW7DSnaQ2afwz8Ptht1Xb.jpg","original_language":"en","id":1399,"vote_average":8.2,"overview":"Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and icy horrors beyond.","poster_path":"/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg"},{"original_name":"Lucifer","id":63174,"name":"Lucifer","popularity":459.581,"vote_count":919,"vote_average":7.4,"first_air_date":"2016-01-25","poster_path":"/1sBx2Ew4WFsa1YY32vlHt079O03.jpg","genre_ids":[80,10765],"original_language":"en","backdrop_path":"/6kZCuvbirx6ibJfaWqwV2p90yPI.jpg","overview":"Bored and unhappy as the Lord of Hell, Lucifer Morningstar abandoned his throne and retired to Los Angeles, where he has teamed up with LAPD detective Chloe Decker to take down criminals. But the longer he's away from the underworld, the greater the threat that the worst of humanity could escape.","origin_country":["US"]},{"original_name":"ワンパンマン","genre_ids":[16,35,10759],"name":"One-Punch Man","popularity":411.992,"origin_country":["JP"],"vote_count":332,"first_air_date":"2015-10-04","backdrop_path":"/s0w8JbuNNxL1YgaHeDWih12C3jG.jpg","original_language":"ja","id":63926,"vote_average":8.1,"overview":"Saitama is a hero who only became a hero for fun. After three years of “special” training, though, he’s become so strong that he’s practically invincible. In fact, he’s too strong—even his mightiest opponents are taken out with a single punch, and it turns out that being devastatingly powerful is actually kind of a bore. With his passion for being a hero lost along with his hair, yet still faced with new enemies every day, how much longer can he keep it going?","poster_path":"/iE3s0lG5QVdEHOEZnoAxjmMtvne.jpg"},{"original_name":"The Flash","genre_ids":[18,10765],"name":"The Flash","popularity":343.765,"origin_country":["US"],"vote_count":2645,"first_air_date":"2014-10-07","backdrop_path":"/jC1KqsFx8ZyqJyQa2Ohi7xgL7XC.jpg","original_language":"en","id":60735,"vote_average":6.7,"overview":"After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \"meta-human\" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won't be long before the world learns what Barry Allen has become...The Flash.","poster_path":"/fki3kBlwJzFp8QohL43g9ReV455.jpg"},{"original_name":"Arrow","genre_ids":[80,18,9648,10759],"name":"Arrow","popularity":257.182,"origin_country":["US"],"vote_count":2430,"first_air_date":"2012-10-10","backdrop_path":"/dKxkwAJfGuznW8Hu0mhaDJtna0n.jpg","original_language":"en","id":1412,"vote_average":5.8,"overview":"Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.","poster_path":"/mo0FP1GxOFZT4UDde7RFDz5APXF.jpg"},{"original_name":"Riverdale","genre_ids":[18,9648],"name":"Riverdale","popularity":213.599,"origin_country":["US"],"vote_count":518,"first_air_date":"2017-01-26","backdrop_path":"/2IUpoKSP64r6rp2vBo0Fdk8a1UU.jpg","original_language":"en","id":69050,"vote_average":6.9,"overview":"Set in the present, the series offers a bold, subversive take on Archie, Betty, Veronica and their friends, exploring the surreality of small-town life, the darkness and weirdness bubbling beneath Riverdale’s wholesome facade.","poster_path":"/gskv297rlbyzLaTU1XZf8UBbxp0.jpg"},{"original_name":"Grey's Anatomy","genre_ids":[18],"name":"Grey's Anatomy","popularity":204.468,"origin_country":["US"],"vote_count":934,"first_air_date":"2005-03-27","backdrop_path":"/y6JABtgWMVYPx84Rvy7tROU5aNH.jpg","original_language":"en","id":1416,"vote_average":6.2,"overview":"Follows the personal and professional lives of a group of doctors at Seattle’s Grey Sloan Memorial Hospital.","poster_path":"/eqgIOObafPJitt8JNh1LuO2fvqu.jpg"},{"original_name":"Marvel's Agents of S.H.I.E.L.D.","genre_ids":[18,10759,10765],"name":"Marvel's Agents of S.H.I.E.L.D.","popularity":188.433,"origin_country":["US"],"vote_count":1254,"first_air_date":"2013-09-24","backdrop_path":"/qtr5i6hOm6oVzTYl3jOQAYP3oc7.jpg","original_language":"en","id":1403,"vote_average":6.8,"overview":"Agent Phil Coulson of S.H.I.E.L.D. (Strategic Homeland Intervention, Enforcement and Logistics Division) puts together a team of agents to investigate the new, the strange and the unknown around the globe, protecting the ordinary from the extraordinary.","poster_path":"/cXiETfFK1BTLest5fhTLfDLRdL6.jpg"},{"original_name":"賢者の孫","genre_ids":[16,35],"name":"Wise Man’s Grandchild","popularity":169.91,"origin_country":[],"vote_count":7,"first_air_date":"2019-04-10","backdrop_path":"/3sExYAo2rNhKgrHx8S37WMTJHZv.jpg","original_language":"ja","id":85844,"vote_average":3.4,"overview":"A young man who had surely died in an accident, was reborn in another world as a baby! After that, he was picked up by the patriot hero \"Sage\" Merlin Wolford and was given the name Shin. He was raised as a grandson by Merlin and soaked up Merlin's teachings, earning him some shocking powers; however, when he became 15, his grandfather Merlin said, \"I forgot to teach him common sense!\"\n\nAn \"abnormal\" boy's unconventional other world fantasy life starts here!","poster_path":"/vdRt0W5sZDLlshT2o3y7c7gZYJA.jpg"},{"original_name":"Family Guy","genre_ids":[16,35],"name":"Family Guy","popularity":163.01,"origin_country":["US"],"vote_count":1510,"first_air_date":"1999-01-31","backdrop_path":"/3OFrs1ets87VmRvG78Zg5eJTZeq.jpg","original_language":"en","id":1434,"vote_average":6.5,"overview":"Sick, twisted, politically incorrect and Freakin' Sweet animated series featuring the adventures of the dysfunctional Griffin family. Bumbling Peter and long-suffering Lois have three kids. Stewie (a brilliant but sadistic baby bent on killing his mother and taking over the world), Meg (the oldest, and is the most unpopular girl in town) and Chris (the middle kid, he's not very bright but has a passion for movies). The final member of the family is Brian - a talking dog and much more than a pet, he keeps Stewie in check whilst sipping Martinis and sorting through his own life issues.","poster_path":"/gBGUL1UTUNmdRQT8gA1LUV4yg39.jpg"},{"original_name":"フェアリーテイル","genre_ids":[16,35,10759,10765],"name":"Fairy Tail","popularity":157.663,"origin_country":["JP"],"vote_count":151,"first_air_date":"2009-10-12","backdrop_path":"/m2lugAG39sO0yCcuxEAu4fY5u1o.jpg","original_language":"ja","id":46261,"vote_average":6.4,"overview":"Lucy is a 17-year-old girl, who wants to be a full-fledged mage. One day when visiting Harujion Town, she meets Natsu, a young man who gets sick easily by any type of transportation. But Natsu isn't just any ordinary kid, he's a member of one of the world's most infamous mage guilds: Fairy Tail.","poster_path":"/58GKcwFV3lpVOGzybeMrrNOjHpz.jpg"},{"original_name":"Supernatural","genre_ids":[18,9648,10765],"name":"Supernatural","popularity":150.505,"origin_country":["US"],"vote_count":1770,"first_air_date":"2005-09-13","backdrop_path":"/o9OKe3M06QMLOzTl3l6GStYtnE9.jpg","original_language":"en","id":1622,"vote_average":7.2,"overview":"When they were boys, Sam and Dean Winchester lost their mother to a mysterious and demonic supernatural force. Subsequently, their father raised them to be soldiers. He taught them about the paranormal evil that lives in the dark corners and on the back roads of America ... and he taught them how to kill it. Now, the Winchester brothers crisscross the country in their '67 Chevy Impala, battling every kind of supernatural threat they encounter along the way. ","poster_path":"/3iFm6Kz7iYoFaEcj4fLyZHAmTQA.jpg"},{"original_name":"The 100","genre_ids":[18,10765],"name":"The 100","popularity":145.02,"origin_country":["US"],"vote_count":1486,"first_air_date":"2014-03-19","backdrop_path":"/qYTIuJJ7fIehicAt3bl0vW70Sq6.jpg","original_language":"en","id":48866,"vote_average":6.5,"overview":"100 years in the future, when the Earth has been abandoned due to radioactivity, the last surviving humans live on an ark orbiting the planet — but the ark won't last forever. So the repressive regime picks 100 expendable juvenile delinquents to send down to Earth to see if the planet is still habitable.","poster_path":"/wBzNjurA8ijJPF21Ggs9nbviIzi.jpg"},{"original_name":"The Simpsons","genre_ids":[16,35],"name":"The Simpsons","popularity":139.999,"origin_country":["US"],"vote_count":1982,"first_air_date":"1989-12-17","backdrop_path":"/1pP0gg0iNGX06wSs19EQOvzfZIF.jpg","original_language":"en","id":456,"vote_average":7.1,"overview":"Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.","poster_path":"/yTZQkSsxUFJZJe67IenRM0AEklc.jpg"},{"original_name":"The Blacklist","genre_ids":[80,18,9648],"name":"The Blacklist","popularity":137.526,"origin_country":["US"],"vote_count":976,"first_air_date":"2013-09-23","backdrop_path":"/fHwiAqIKragaCbNJo9Qs4lrccIN.jpg","original_language":"en","id":46952,"vote_average":7,"overview":"Raymond \"Red\" Reddington, one of the FBI's most wanted fugitives, surrenders in person at FBI Headquarters in Washington, D.C. He claims that he and the FBI have the same interests: bringing down dangerous criminals and terrorists. In the last two decades, he's made a list of criminals and terrorists that matter the most but the FBI cannot find because it does not know they exist. Reddington calls this \"The Blacklist\". Reddington will co-operate, but insists that he will speak only to Elizabeth Keen, a rookie FBI profiler.","poster_path":"/bgbQCW4fE9b6wSOSC6Fb4FfVzsW.jpg"},{"original_name":"ドラゴンボール","genre_ids":[16,35,10759,10765],"name":"Dragon Ball","popularity":137.205,"origin_country":["JP"],"vote_count":289,"first_air_date":"1986-02-26","backdrop_path":"/iflq7ZJfso6WC7gk9l1tD3unWK.jpg","original_language":"ja","id":12609,"vote_average":7.2,"overview":"Long ago in the mountains, a fighting master known as Gohan discovered a strange boy whom he named Goku. Gohan raised him and trained Goku in martial arts until he died. The young and very strong boy was on his own, but easily managed. Then one day, Goku met a teenage girl named Bulma, whose search for the dragon balls brought her to Goku's home. Together, they set off to find all seven dragon balls in an adventure that would change Goku's life forever. See how Goku met his life long friends Bulma, Yamcha, Krillin, Master Roshi and more. And see his adventures as a boy, all leading up to  Dragonball Z and later  Dragonball GT.","poster_path":"/3wx3EAMtqnbSLhGG8NrqXriCUIQ.jpg"},{"original_name":"Black Summer","genre_ids":[18,10759],"name":"Black Summer","popularity":131.209,"origin_country":["US"],"vote_count":33,"first_air_date":"2019-04-11","backdrop_path":"/keroOwdUtl6oD3k4KwQFDipeZq5.jpg","original_language":"en","id":88052,"vote_average":5.6,"overview":"In the dark, early days of a zombie apocalypse, complete strangers band together to find the strength they need to survive and get back to loved ones.","poster_path":"/tnRiTrHCL3k5F0QOtQhkQd3AAR5.jpg"},{"original_name":"NCIS","genre_ids":[80,18,10759],"name":"NCIS","popularity":130.916,"origin_country":["US"],"vote_count":750,"first_air_date":"2003-09-23","backdrop_path":"/nymeWHYQ1JaWP2wyNW5a5WHiDCd.jpg","original_language":"en","id":4614,"vote_average":6.7,"overview":"From murder and espionage to terrorism and stolen submarines, a team of special agents investigates any crime that has a shred of evidence connected to Navy and Marine Corps personnel, regardless of rank or position.","poster_path":"/eoj15m14Zpf2bUWXqNIs7itZK9w.jpg"},{"original_name":"Supergirl","genre_ids":[28,12,18,878],"name":"Supergirl","popularity":128.681,"origin_country":["US"],"vote_count":933,"first_air_date":"2015-10-26","backdrop_path":"/2qou2R47XZ1N6SlqGZcoCHDyEhN.jpg","original_language":"en","id":62688,"vote_average":5.7,"overview":"Twenty-four-year-old Kara Zor-El, who was taken in by the Danvers family when she was 13 after being sent away from Krypton, must learn to embrace her powers after previously hiding them. The Danvers teach her to be careful with her powers, until she has to reveal them during an unexpected disaster, setting her on her journey of heroism.","poster_path":"/vqBsgL9nd2v04ZvCqPzwtckDdFD.jpg"},{"original_name":"Shadowhunters","genre_ids":[18,10759,10765],"name":"Shadowhunters","popularity":128.539,"origin_country":["US"],"vote_count":302,"first_air_date":"2016-01-12","backdrop_path":"/o0PtXGp2XyoRu0S1uPYzDpMnkOM.jpg","original_language":"en","id":63210,"vote_average":6.5,"overview":"When Clary Fray's mother has disappeared, Clary joins a band of Shadowhunters; demon killing hunters, and gets caught up in a plan to save the world.","poster_path":"/66YHvvVduC21xcMXPpBBF0ywyVZ.jpg"}]
    }
  end

  describe 'the view produced by a GET request on page 1 of the Movie DB discover endpoint' do
    it 'produces 20 results for the first page' do
      expect(popular[:results].count).to eq 20
    end

    it 'checks that all the popular tv show names render on the page' do
      show_names = popular[:results].map { |x| x[:name] }
      popular[:results].each_with_index do |_x, i|
        expect({"original_name":"Game of Thrones","genre_ids":[18,10759,10765],"name":"Game of Thrones","popularity":555.408,"origin_country":["US"],"vote_count":5785,"first_air_date":"2011-04-17","backdrop_path":"/qsD5OHqW7DSnaQ2afwz8Ptht1Xb.jpg","original_language":"en","id":1399,"vote_average":8.2,"overview":"Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and icy horrors beyond.","poster_path":"/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg"})
      end
    end

  end

  
end
