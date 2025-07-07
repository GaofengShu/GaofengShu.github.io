---
title: "STLDF-Net: a semantic segmentation network for lunar surface linear structure detection—a case study of lobate scarps"
collection: publications
permalink: /publication/2025-06-04-A-network-for-lunar-surface-linear-structure-detection
excerpt: 'A semantic segmentation-based automatic detection network for lunar surface linear structure is proposed, which is based on Swin Transformer for semantic segmentation and integrates three modules— long-connection Swin Transformer residual block, deformable pyramid pooling module, and feature pyramid and aggregation network. \[[pdf](http://GaofengShu.github.io/files/2025-06-04-A-network-for-lunar-surface-linear-structure-detection.pdf)\]'
date: 2025-06-04
venue: 'Journal of Applied Remote Sensing'
paperurl:
citation: 'C. Li, P. Xu, X. Lu, Z. Guo, N. Li, and <b>G. Shu</b>. &quot;STLDF-Net: a semantic segmentation network for lunar surface linear structure detection—a case study of lobate scarps&quot;. <i>Journal of Applied Remote Sensing</i>. 2025, 19, 2, 024511.'
---
The lunar surface is characterized by numerous linear structures. Investigating these linear features contributes to our understanding of the Moon's cooling processes and the evolutionary history of its crust. Currently, most methods for extracting linear structures from remote sensing images of the lunar surface rely on manual visual interpretation and semi-supervised learning. This leads to inefficient extraction of these structures from the vast amount of lunar remote sensing data. We take the typical lunar linear structure—lobate scarps—as a representative case and propose a semantic segmentation-based automatic detection algorithm. The proposed model, based on Swin Transformer for semantic segmentation, integrates three modules— long-connection Swin Transformer residual block, deformable pyramid pooling module, and feature pyramid and aggregation network—to significantly enhance the network's capability in extracting features of lobate scarps. The model is named STLDF-Net. Compared with other networks, STLDF-Net achieved the highest accuracy on our custom dataset, with an intersection over union of 95.71% and an F1-score of 97.81%. We applied the trained model to detect lobate scarps in the Aitken crater region and the Ansgarius crater region, successfully mapping their spatial distribution in these areas. In addition, we transferred the model to detect lobate scarps on Mars, obtaining favorable results and demonstrating the model's strong generalization capabilities. Finally, we conducted experiments and discussions on the model complexity of STLDF-Net, verifying its applicability for lunar lobate scarp segmentation tasks. \[[pdf](http://GaofengShu.github.io/files/2025-06-04-A-network-for-lunar-surface-linear-structure-detection.pdf), SCI, EI, IF=1.400, CAS-G4, JCR-Q3\]

*[SCI]: Accession Number: WOS:xxx
*[EI]: Accession Number: xxx

<img src='/images/pubsImages/LobateScarpsDetectionResults.png'>

Recommended citation:

C. Li, P. Xu, X. Lu, Z. Guo, N. Li, and **G. Shu**, "STLDF-Net: a semantic segmentation network for lunar surface linear structure detection—a case study of lobate scarps," in *Journal of Applied Remote Sensing*, vol. 19, no. 2, pp. 024511, 2025, doi: [10.1117/1.JRS.19.024511](https://doi.org/10.1117/1.JRS.19.024511).
{: .notice}

bibtex: 
<pre>
@ARTICLE{Li2025STLDF-Net,
  author={Chenya Li and Puyan Xu and Xin Lu and Zhiyuan Guo and Ning Li and Gaofeng Shu},
  journal = {Journal of Applied Remote Sensing},
  title={STLDF-Net: a semantic segmentation network for lunar surface linear structure detection—a case study of lobate scarps}, 
  year={2025},
  volume={19},
  number={2},
  pages={024511},
  doi={10.1117/1.JRS.19.024511}
}
</pre>
