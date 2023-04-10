# 강서구, 광진구 주차 문제 해결 프로젝트
동 시간대 진행된 공모전 참가, 이하 코드 및 프로젝트 개요 서술.
강서구 : https://www.gangseo.seoul.kr/reserve/re040101/view?aplySn=44&curPage=1
광진구 : https://gwangjin.go.kr/portal/bbs/B0000003/view.do?nttId=6034623&menuNo=200192
## DSL 23-1 Modelling Project F조 - 강서구 정리 repository
**팀원** : 강건우, 전재병, 조찬형 

## Overview
---

**1. 개요**
- Background:
  - 지속적인 불법 주정차 단속에 들어가는 인력 및 비용 
  - 주정차를 위한 교통량 증가로 초래되는 교통 체증 
  - 불법 주정차의 위험에서 초래되는 전 사회적 효용 감소
- 기획 내용(스토리보드)
![image01](https://user-images.githubusercontent.com/99315587/230776643-15a34bb0-9ef7-420d-b521-cff6d6a238df.png)

 **2. 데이터 확보**
- 면적
https://data.seoul.go.kr/dataList/10112/S/2/datasetView.do
- 주차면수, 개소
https://data.seoul.go.kr/dataList/10152/S/2/datasetView.do
- 거주인구
https://data.seoul.go.kr/dataList/11068/S/2/datasetView.do
- 대중교통이용
https://data.seoul.go.kr/dataList/OA-21223/S/1/datasetView.do
- 사업체수, 종사자수
https://data.seoul.go.kr/dataList/104/S/2/datasetView.do
- 생활인구
https://data.seoul.go.kr/dataList/OA-14991/S/1/datasetView.do
https://data.seoul.go.kr/dataList/OA-14993/S/1/datasetView.do
https://data.seoul.go.kr/dataList/OA-14992/S/1/datasetView.do
- 주택수
https://data.seoul.go.kr/dataList/10585/S/2/datasetView.do
-유동인구
https://data.seoul.go.kr/dataVisual/seoul/seoulLivingMigration.do
- 불법 주정차
https://www.data.go.kr/data/15083768/fileData.do
https://www.data.go.kr/data/15099430/fileData.do
- 자동차 등록 현황
https://www.data.go.kr/data/15086021/fileData.do
- 주차장 확보율
https://data.seoul.go.kr/dataList/10357/S/2/datasetView.do
- 근로소득
https://data.seoul.go.kr/dataList/10748/S/2/datasetView.do
- 기준금리
https://www.bok.or.kr/portal/singl/baseRate/list.do?dataSeCd=01&menuNo=200643
- GDP
https://www.index.go.kr/unity/potal/main/EachDtlPageDetail.do?idx_cd=2736
- 기준 유가
https://www.opinet.co.kr/user/dopospdrg/dopOsPdrgAreaView.do
- 참고문헌 : 
  - 서울시 주차문제 해결을 위한 주차장 이용효율 향상 연구, 2020, 서울디지털재단
  - 불법 주정차 관리체계에 관한 연구, 2013, 한국지방행정연구원
  
**3. 데이터 전처리**
- 작업별로 상이함. data folder에 preprocess과정 병기



**4. Pipeline**

- 불법 주정차 문제와 교통 정체의 상관관계 분석

- 시계열 예측 모델 (arimax) 를 통한 강서구 예상 주차장 확보율 예측

- 강서구 동 별 필요 주차장 면수 예측

- 행정동 별 생활인구 변동 분석

- 행정동 별 최적 주차 솔루션 제시 

**5. 맺음말**


# 프로젝트의 가치
- 창출된 지표를 통한 주차 솔루션 시급지 분석
- 실제 제도와 결합된 실현 가능한 솔루션 시행
- 주차장 관련 내부 정책 논의 시 창출된 예상 주차장 면적수 & 갭 지수 도입


# End-to-End Inference
---
행정동 정적 변수 기반, 생활 인구 변동 기반 분석을 통한 주차 솔루션 제시

### Dependencies
- google colab
- R 버전 상관 없음


## File Description
---
### Gangseo
- `hangjungdong.ipynb` : 


  - 시계열 예측 모델 (arimax) 를 통한 강서구 예상 주차장 확보율 예측
  
  - 강서구 동 별 필요 주차장 면수 예측


- `linear_regression_R` : 다중 회귀 모형을 통한 행정동 별 생활인구 변동 분석

- `traffic`:  불법 주정차 문제와 교통 정체의 상관관계 분석

### data

- 사용한 데이터들과 전처리 과정 zip folder
