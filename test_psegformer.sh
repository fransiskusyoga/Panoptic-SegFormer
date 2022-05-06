#!/bin/bash
#SBATCH  --output=log/%j.out
#SBATCH  --gres=gpu:1
#SBATCH  --mem=30G

source env/bin/activate
echo ""
echo ""
echo ""
echo "********************************************************************"
echo "./models/panoptic_segformer_r50_1x.pth "
echo "********************************************************************"
./tools/dist_test.sh  ./configs/panformer/panformer_r50_12e_coco_panoptic.py ./models/panoptic_segformer_r50_1x.pth 1
echo ""
echo ""
echo ""
echo "********************************************************************"
echo "./models/panoptic_segformer_r50_2x.pth "
echo "********************************************************************"
./tools/dist_test.sh  ./configs/panformer/panformer_r50_24e_coco_panoptic.py ./models/panoptic_segformer_r50_2x.pth 1
echo ""
echo ""
echo ""
echo "********************************************************************"
echo "./models/panoptic_segformer_r101_2x.pth "
echo "********************************************************************"
./tools/dist_test.sh  ./configs/panformer/panformer_r101_24e_coco_panoptic.py ./models/panoptic_segformer_r101_2x.pth 1
echo ""
echo ""
echo ""
echo "********************************************************************"
echo "./models/panoptic_segformer_pvtv2b5_2x.pth "
echo "********************************************************************"
./tools/dist_test.sh ./configs/panformer/panformer_pvtb5_24e_coco_panoptic.py ./models/panoptic_segformer_pvtv2b5_2x.pth 1
echo ""
echo ""
echo ""
echo "********************************************************************"
echo "./models/panoptic_segformer_r101_2x.pth "
echo "********************************************************************"
./tools/dist_test.sh  ./configs/panformer/panformer_swinl_24e_coco_panoptic.py ./models/panoptic_segformer_swinl_2x.pth 1