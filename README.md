# Basic_SoC_Implementation
SoC 기본 블럭, Peripheral Macro 설계 및 RTL-to-GDSII

## 😎 어서오세요
SoC의 기본 구성을 이루는 기본적인 요소들을 학습하고 RTL- to-GDSII의 Flow를 따라 Logic을 Physical Implementation해 보아요!
## ⭐프로젝트 개요
* **SoC**의 기본을 이루는 RTL Block Coding
* 주요 Combinational / Sequentail Logic 의 HDL 설계 및 검증
* ASIC Flow에 사용하는 전문 EDA Tool을 사용한 Functional Verification
* RTL 소스의 Constraint 작성
* Constraint 적용한 RTL 소스의 Synthesis
* Synthesis 이후의 Gate Level Netlist에 대한 Post Synthesis Simulation
* Gate Level Netlist(GLN) 및 `.sdc`, `.lef` 적용한 Auto Place and Route(APR)

## 🔎참고자료(링크)
https://gist.github.com/ihoneymon/652be052a0727ad59601


# MD 문법
This is an H1
===
This is an H2
---
# This is an H1
###### This is an H5

> This is a first block quote.
>> This is a second block quote.
>>> * This is a third block quote.

1. 첫번째
2. 두번째
3. 세번째

+ 빨강
+ 녹색
+ 파랑
- 
- 빨강
  - 녹색
    - 파랑

    This is a normal paragraph

This is
<pre>
<code>
void main{
    printf("Hello world");
    return;
}
</code>
</pre>
```c
void main ...
```

***
* * *
*****
- - -
---
------

* 줄 바꿈을 하기 위해서는 문장 마지막에서 3칸 이상을 띄어쓰기해야 한다.