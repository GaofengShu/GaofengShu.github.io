---
title: "A modified EMD method for detecting and mitigating narrow-band RFI in SAR data"
collection: publications
permalink: /publication/2022-04-24-Modified-EMD-Based-RFI-Mitigation
excerpt: 'a modified EMD method is proposed to tackle the loss of useful signals while mitigating RFI via traditional EMD-based method.'
date: 2022-04-24
venue: 'Remote Sensing Letters'
paperurl: 'http://GaofengShu.github.io/files/2022-04-24-Modified-EMD-Based-RFI-Mitigation.pdf'
citation: 'N. Li, B. Chen, Z. Lv and <b>G. Shu</b>. &quot;A modified EMD method for detecting and mitigating narrow-band RFI in SAR data&quot;. <i>Remote Sensing Letters</i>. 2022, 13(3):643-650.'
---
本文提出了一种改进的 EMD 方法来解决含干扰 SAR 数据 RFI 抑制过程有用信号损失这一问题。首先，通过相对能量比检测回波的干扰;其次，通过 EMD 将含有射频干扰的回波分解成多个 IMF。这些 IMF 通过 STFT 转换成时频域，然后通过鲁棒的双 k-均值算法筛选出与 RFI 相对应的 IMF。最后，利用鲁棒 OTSU 算法对时频域的 RFI 进行定位，并通过陷波运算进行抑制。利用仿真的射频干扰对真实 SAR 数据进行实验，结果表明了该方法的有效性和优越性。\[[pdf](http://GaofengShu.github.io/files/2022-04-24-Modified-EMD-Based-RFI-Mitigation.pdf), SCI, EI, IF=2.3000, CAS G4\]

*[SCI]: Accession Number: WOS:000786555000001
*[EI]: Accession Number: 20221712039741
*[CAS G4]: The 4th grade of journal ranking of the Chinese Academy of Sciences

<img src='/images/pubsImages/EMDBasedRFISuppresion.png'>

Recommended citation:

N. Li, B. Chen, Z. Lv and **G. Shu**, "A modified EMD method for detecting and mitigating narrow-band RFI in SAR data," in *Remote Sensing Letters*, vol. 13, no. 3, pp. 643-650, doi: [10.1080/2150704X.2022.2065894](https://doi.org/10.1080/2150704X.2022.2065894).
{: .notice}

bibtex: 
<pre>
@ARTICLE{Li2022EMDRFI,
	author={Ning Li and Bingxu Chen and Zongsen Lv and Gaofeng Shu},
	journal={Remote Sensing Letters},
	title={A modified EMD method for detecting and mitigating narrow-band RFI in SAR data},
	year={2022},
	month={Apr.},
	volume={13},
	number={3},
	pages={643-650},
	doi={10.1080/2150704X.2022.2065894},
}
</pre>
