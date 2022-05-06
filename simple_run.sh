#!/bin/bash
#SBATCH  --output=log/%j.out
#SBATCH  --gres=gpu:1
#SBATCH  --mem=30G

source env/bin/activate

#python -m torch.distributed.launch --nproc_per_node=1 --master_port=29504 ./tools/test.py ./configs/panformer/panformer_r50_12e_coco_panoptic.py ./models/panoptic_segformer_r50_1x.pth --launcher pytorch --eval panoptic 

#python -m tools.test ./configs/panformer/panformer_r50_12e_coco_panoptic.py ./models/panoptic_segformer_r50_1x.pth --eval panoptic 

#python -m tools.train ./configs/panformer/panformer_r50_12e_coco_panoptic.py --deterministic


./tools/dist_train.sh ./configs/panformer/panformer_r50_12e_coco_panoptic.py 1
