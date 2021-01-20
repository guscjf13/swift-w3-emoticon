# swift-w3-emoticon
모바일 3주차 이모티콘 저장소


1. make project (20.01.19)
- fork, clone
- emoticonApp 생성


2. init project (20.01.19)
- EventImage 생성 (EventView로 재생성 예정)
![Simulator Screen Shot - iPad Pro (12 9-inch) (4th generation) - 2021-01-19 at 10 29 13](https://user-images.githubusercontent.com/28801805/104976720-37c58e00-5a41-11eb-854b-9fc936a661a4.png)


3. EventView, Emoticon Class 생성
- Emoticon Class에 sample return하는 class func 추가


4. EmoTableView 생성
- EmoTableView, EmoTabelViewCell 생성
- Main VC에서 EventView 와 EmoTableView 초기화
- EmoTableView 객체에서 이미지를 제외한 데이터 출력
![Simulator Screen Shot - iPhone 11 - 2021-01-19 at 16 15 39](https://user-images.githubusercontent.com/28801805/105000628-e4b7ff00-5a71-11eb-85f7-54047b9579f3.png)


5. Emoticon Image 삽입
- Asset에 Emoticon 이미지 폴더 추가
- EmoTableView 에 image 추가
![Simulator Screen Shot - iPhone 11 - 2021-01-19 at 16 29 12](https://user-images.githubusercontent.com/28801805/105001706-87bd4880-5a73-11eb-9100-96a22f63cc28.png)


6. Embed Navigation Controller,
- Navigation Controoler 임베드
- 카트 버튼 누르면 CartTableViewController로 이동
![스크린샷 2021-01-19 오후 5 39 01](https://user-images.githubusercontent.com/28801805/105008988-49c52200-5a7d-11eb-9052-ec55c097c6d8.png)

7. make SQLite
- SQLite 테이블 생성, 함수 작성
![스크린샷 2021-01-20 오후 1 31 15(2)](https://user-images.githubusercontent.com/28801805/105128937-6158e500-5b27-11eb-8a0d-65912c47c04e.png)
![스크린샷 2021-01-20 오후 1 44 03(2)](https://user-images.githubusercontent.com/28801805/105128942-6322a880-5b27-11eb-8340-91a368084d20.png)

8. modify SQLite, CartItem
- SQLite 테이블 구조 수정(Date 추가)
-CartItem 클래스 생성
![스크린샷 2021-01-20 오후 6 51 43](https://user-images.githubusercontent.com/28801805/105157762-a5141480-5b50-11eb-8099-6edcf13854d4.png)

