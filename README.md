# Convolutional Neural Network Comparison using Human Against Machine 10,000 Dataset
*_Note: A full report is included with the files of the same name._

## Quick Description
This project serves as an exploration and comparison of different convolutional neural network architectures for the use of detecting various skin cancers and lesions of the skin. 
Performance metrics are gathered and weighed to examine the drawbacks and benefits of each chosen architecture. 
The neural networks used for this projcet are GoogLeNet, ResNet50, VGG19, and MobileNetV2.

## How to use
The files included were created using [MATLAB's Deep Network Designer Toolbox](https://www.mathworks.com/help/deeplearning/gs/get-started-with-deep-network-designer.html). 
After the inital training the code was exported for further tweaking and a parameter file was also included. 
*_Note: The parameter file for VGG19 is currently not included due to its size, but all the settings in each parameter file were kept the same so it should be easy to replicate._

Two Confusion Matrices are produced which are identical except they are flipped. 
With these confusion matrices performance metrics can be generated which is where the real information is located. 
The formulas for these performace metrics will have its own section followed by the tabulized results. 

## Performance Metric Equations
The confusion matrix generates true positive (TP), true negative (TN), false positive (FP), and false negative (FN) values which are then used in each performance metric equation.
The tabulated metrics include accuracy (1), precision (2), specificity (3), and sensitivity (4) [1]. 
```math
Accuracy = \frac{TP + TN}{Total} \hspace{76pt}         (1)
```
```math
Precision = \frac{TP}{FP + FN} \hspace{74pt}           (2)
```
```math
Specificity = \frac{TN}{FN + FP} \hspace{70pt}         (3)
```
```math
Sensitivity = \frac{TP}{FN + TP} \hspace{70pt}         (4)
```

After these metrics are gathered, the overall accuracy (5), macro-precision (6), and macro-sensitivity (7) can be found. 
These metrics are an average of all the classifications whre _n_ is the number of classifications, _P_ is precision, and _S_ is sensitivity. 
```math
Overall\hspace{5pt}Accuracy = \frac{1}{total}\sum_{i=1}^n TP_i \hspace{30pt} (5)
```
```math
Macro-Precision = \frac{1}{n}\sum_{i=1}^n P_i \hspace{45pt} (6)
```
```math
Macro-Sensitivity = \frac{1}{n}\sum_{i=1}^n S_i \hspace{40pt} (7)
```
## Data and Results
The first tables will show the metrics per classification while the final table will do a final comparison of the performance metrics per architecture. 
### GoogLeNet
| **GoogLeNet** | TP   | TN   | FP  | FN  | Total | Accuracy | Precision | Specificity | Sensitivity |
|---------------|------|------|-----|-----|-------|----------|-----------|-------------|-------------|
| akiec         | 15   | 2902 | 4   | 83  | 3004  | 0.971039 | 0.789474  | 0.998624    | 0.153061    |
| bcc           | 89   | 2806 | 44  | 65  | 3004  | 0.963715 | 0.669173  | 0.984561    | 0.577922    |
| bkl           | 205  | 2420 | 254 | 125 | 3004  | 0.873835 | 0.446623  | 0.905011    | 0.621212    |
| df            | 16   | 2958 | 12  | 18  | 3004  | 0.990013 | 0.571429  | 0.99596     | 0.470588    |
| mel           | 139  | 2565 | 105 | 195 | 3004  | 0.900133 | 0.569672  | 0.960674    | 0.416168    |
| nv            | 1823 | 725  | 268 | 188 | 3004  | 0.848202 | 0.871832  | 0.730111    | 0.906514    |
| vasc          | 21   | 2952 | 9   | 22  | 3004  | 0.98968  | 0.7       | 0.99696     | 0.488372    |

### ResNet50
| **ResNet50** | TP   | TN   | FP  | FN  | Total | Accuracy | Precision | Specificity | Sensitivity |
|--------------|------|------|-----|-----|-------|----------|-----------|-------------|-------------|
| akiec        | 68   | 2873 | 33  | 30  | 3004  | 0.979028 | 0.673267  | 0.988644    | 0.693878    |
| bcc          | 97   | 2813 | 37  | 57  | 3004  | 0.968708 | 0.723881  | 0.987018    | 0.62987     |
| bkl          | 188  | 2557 | 117 | 142 | 3004  | 0.913782 | 0.616393  | 0.956245    | 0.569697    |
| df           | 16   | 2962 | 8   | 18  | 3004  | 0.991345 | 0.666667  | 0.997306    | 0.470588    |
| mel          | 237  | 2298 | 372 | 97  | 3004  | 0.843875 | 0.389163  | 0.860674    | 0.709581    |
| nv           | 1661 | 851  | 142 | 350 | 3004  | 0.836218 | 0.921242  | 0.856999    | 0.825957    |
| vasc         | 23   | 2956 | 5   | 20  | 3004  | 0.991678 | 0.821429  | 0.998311    | 0.534884    |

### VGG19
| **VGG19** | TP   | TN   | FP  | FN  | Total | Accuracy | Precision | Specificity | Sensitivity |
|-----------|------|------|-----|-----|-------|----------|-----------|-------------|-------------|
| akiec     | 25   | 2898 | 8   | 73  | 3004  | 0.973036 | 0.757576  | 0.997247    | 0.255102    |
| bcc       | 90   | 2812 | 38  | 64  | 3004  | 0.966045 | 0.703125  | 0.986667    | 0.584416    |
| bkl       | 214  | 2455 | 219 | 116 | 3004  | 0.888482 | 0.494226  | 0.9181      | 0.648485    |
| df        | 7    | 2969 | 1   | 27  | 3004  | 0.990679 | 0.875     | 0.999663    | 0.205882    |
| mel       | 223  | 2275 | 395 | 111 | 3004  | 0.831558 | 0.360841  | 0.85206     | 0.667665    |
| nv        | 1599 | 827  | 166 | 412 | 3004  | 0.80759  | 0.905949  | 0.83283     | 0.795127    |
| vasc      | 17   | 2959 | 2   | 26  | 3004  | 0.990679 | 0.894737  | 0.999325    | 0.395349    |

### MobileNetV2
| **MobileNetV2** | TP   | TN   | FP  | FN  | Total | Accuracy | Precision | Specificity | Sensitivity |
|-----------------|------|------|-----|-----|-------|----------|-----------|-------------|-------------|
| akiec           | 50   | 2891 | 15  | 48  | 3004  | 0.979028 | 0.769231  | 0.994838    | 0.510204    |
| bcc             | 86   | 2831 | 19  | 68  | 3004  | 0.971039 | 0.819048  | 0.993333    | 0.558442    |
| bkl             | 189  | 2530 | 144 | 141 | 3004  | 0.905126 | 0.567568  | 0.946148    | 0.572727    |
| df              | 18   | 2961 | 9   | 16  | 3004  | 0.991678 | 0.666667  | 0.99697     | 0.529412    |
| mel             | 223  | 2272 | 398 | 111 | 3004  | 0.830559 | 0.359098  | 0.850936    | 0.667665    |
| nv              | 1643 | 815  | 178 | 368 | 3004  | 0.818242 | 0.902252  | 0.820745    | 0.817006    |
| vasc            | 29   | 2958 | 3   | 14  | 3004  | 0.994341 | 0.90625   | 0.998987    | 0.674419    |

### Results
| **CNN**     | Overall Accuracy | Macro-Precision | Macro-Sensitivity |
|-------------|------------------|-----------------|-------------------|
| GoogLeNet   | 0.768308921      | 0.659743153     | 0.519119656       |
| ResNet50    | 0.762316911      | 0.687434506     | 0.633493526       |
| VGG19       | 0.724034621      | 0.713064909     | 0.507432162       |
| MobileNetV2 | 0.745006658      | 0.712873194     | 0.618553488       |

## Results Discussion
Overall, this was a success with training various convolution neural network architecures and extrapolating their data so that a thorough analysis of their respective performance metrics can be measured and tabulated. 
These pre-trained architectures are normally used for large datasets which may cause issues when training from datasets comparatively smaller such as the one used for this report.
Parameters could have been further tweaked and tested to increase the overall performance, but the close deadline of the project prevent me from taking too much time in that regard. From the data we see
GoogLeNet had better accuracy at the cost of some precision and sensitivity.

## References
[1] Chen, Qingguang, et al. “Hierarchical CNN-Based Occlusal
Surface Morphology Analysis for Classifying Posterior Tooth
Type Using Augmented Images from 3D Dental Surface Models.”
Computer Methods and Programs in Biomedicine, vol. 208, 2021,
pp. 106295–106295, https://doi.org/10.1016/j.cmpb.2021.106295.
