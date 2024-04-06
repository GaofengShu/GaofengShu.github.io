---
title: "A Novel Method for SAR Ship Detection Based on Eigensubspace Projection"
collection: publications
permalink: /publication/2022-07-12-ESSP-Based-Ship-Detection
excerpt: 'A method to suppress pulse radio frequency interference in SAR images based on eigen subspace projection.'
date: 2022-07-12
venue: 'Remote Sensing'
paperurl: 'http://GaofengShu.github.io/files/2022-07-12-ESSP-Based-Ship-Detection.pdf'
citation: '<b>G. Shu</b>, J. Chang, J. Lu, Q. Wang and N. Li. &quot;A Novel Method for SAR Ship Detection Based on Eigensubspace Projection&quot;. <i>Remote Sensing</i>. 2022, 14, 14.'
---

在复杂场景下，SAR 舰船目标容易淹没在海杂波中，导致漏检，SAR 图像中的强旁瓣会进一步降低检测精度。针对这些问题，本文提出一种基于 SAR 图像特征子空间投影（ESSP）的船舶检测方法。首先将图像沿方向向重构为新的观测矩阵，并利用汉克尔特征构造重构图像的相空间矩阵，初步确定船舶的大致位置。然后，通过特征值分解（EVD）来分解重建图像的自相关矩阵。根据特征值的大小，将相应的特征向量分为两部分，构成船舶子空间和杂波子空间的基础。最后将原始图像投影到船舶子空间中，对船舶子空间中的船舶数据进行重新排列，得到杂波明显抑制的船舶精确位置。在不同海况下的四幅图像上将 ESSP 方法与其他检测方法进行了比较。结果表明，ESSP 方法在复杂场景下的检测准确率达到89.87%。\[[pdf](http://GaofengShu.github.io/files/2022-07-12-ESSP-Based-Ship-Detection.pdf), SCI, EI, IF=5.0002, CAS G2 Top\]

*[SCI]: Accession Number: WOS:000832037800001
*[EI]: Accession Number: 20223512630705
*[CAS G2 Top]: The 2nd top grade of journal ranking of the Chinese Academy of Sciences

<img src='/images/pubsImages/ESSPBasedShipDetection.jpg'>

Recommended citation:

**G. Shu**, J. Chang, J. Lu, Q. Wang and N. Li., "A Novel Method for SAR Ship Detection Based on Eigensubspace Projection," *Remote Sensing*, vol. 14, no. 14, pp. 3441, 2022, , doi: [10.3390/rs14143441](10.3390/rs14143441).
{: .notice}

bibtex: 

<pre>
@ARTICLE{Shu2022ShipDetectionESSP,
    author={Shu, Gaofeng and Chang, Jiahui and Lu, Jing and Wang, Qing and Li, Ning},
    journal={Remote Sensing},
    title={A Novel Method for SAR Ship Detection Based on Eigensubspace Projection},
    year={2022},
    month={Jul.},
    volume={14},
    number={14},
    ARTICLE-NUMBER = {3441},
    doi={10.3390/rs14143441},
}
</pre>
