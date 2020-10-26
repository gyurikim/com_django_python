import requests
from bs4 import BeautifulSoup


def datasand():
    # 유저 설정
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36"
    }

    # 네이버 메인이 아닌 DataLab 페이지
    url = "https://www.gg.go.kr/contents/contents.do?ciIdx=1150&menuId=2909"
    # print(url)
    # User 설정
    res = requests.get(url, headers=headers)

    # res.content 주의
    soup = BeautifulSoup(res.content, "html.parser")

    # span.item_title 정보를 선택
    # data = soup.select('event_item')
    # 신규확진자
    cdata1 = soup.find(id="a-increase")
    print(cdata1.get_text())
    cdata1 = cdata1.get_text()
    # 치료중
    cdata2 = soup.find(id="a-isolate")
    print(cdata2.get_text())
    cdata2 = cdata2.get_text()
    # 격리중
    cdata3 = soup.find(id="a-release")
    print(cdata3.get_text())
    cdata3 = cdata3.get_text()
    # 사망
    cdata4 = soup.find(id="a-dead")
    print(cdata4.get_text())
    cdata4 = cdata4.get_text()
    # 총 확진자수
    cdata5 = soup.find(id="a-total")
    print(cdata5.get_text())
    cdata5 = cdata5.get_text()

    # for 문으로 출력해준다.
    # for item in data:
    #     print(item.get_text())
    total = [cdata1, cdata2, cdata3, cdata4, cdata5]
    print(total)
    return total
