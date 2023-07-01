python scripts/extract_global_descriptors.py --output_base_name="cosplace_50_tokyo247_queries_night" --extractor="CosPlace()" --batch_size=64 --num_workers=8 --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night" >updates.out 2>updates.err &

python scripts/rerank.py --output_base_name="r2d2_tokyo247_queries_night" --extractor="R2D2()" --scorer="RANSAC(ransacReprojThreshold=24)" --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
python scripts/rerank.py --output_base_name="d2net_tokyo247_queries_night" --extractor="D2Net()" --scorer="RANSAC(ransacReprojThreshold=24)" --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
python scripts/rerank.py --output_base_name="superglue_tokyo247_queries_night" --extractor="SuperPoint()" --scorer="SuperGlue()" --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
python scripts/rerank.py --output_base_name="transvpr_tokyo247_queries_night" --extractor="TransVPR()" --scorer="RANSAC(ransacReprojThreshold=24)" --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
python scripts/rerank.py --output_base_name="patchnetvlad_tokyo247_queries_night" --extractor="PatchNetVLAD()" --scorer='MultiScaleRANSAC({"ransac_configs": {"ransacReprojThreshold": 30.,  "ransacIter": 2000}, "num_levels": 3, "weights": [0.45, 0.15, 0.4]})' --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
python scripts/rerank.py --output_base_name="patchnetvlad_tokyo247_queries_night" --extractor="PatchNetVLAD()" --scorer='Rapid()' --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
python scripts/rerank.py --output_base_name="cvnet_tokyo247_queries_night" --scorer='CVNet()' --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
python scripts/rerank.py --output_base_name="loftr_tokyo247_queries_night" --scorer='LoFTR()' --base_predictions_path="outputs/cosplace_50_tokyo247_queries_night.h5" --output_folder="outputs" --dataset_path="/data/vg_datasets/retrieval/tokyo247/images/test/" --database_folder="database" --queries_folder="queries_night"
