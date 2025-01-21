#!/bin/bash

condac spacy
cd pkg
pip install -U pip setuptools wheel
git clone https://github.com/explosion/spaCy
cd spaCy
git checkout release-v3.8.4
# source ~/.cu118
source ~/.cu121
# pip install torch torchvision torchaudio --index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
# pip install -r requirements.txt
# pip install "beautifulsoup4" "defusedxml" "jupyter-core>=4.7" "nbformat>=5.1" "traitlets>=5.0" "jupyter-client>=6.1.12" ipykernel ipywidgets

# # pip install --no-build-isolation --editable '.[cuda11x,transformers,lookups,ja]'
# pip install --no-build-isolation --editable '.[cuda12x,transformers,lookups,ja]' # for cuda12x

conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y
pip install transformers huggingface accelerate
conda install ipykernel ipywidgets nbconvert -y
conda install -c conda-forge spacy -y
conda install -c conda-forge cupy -y
conda install -c conda-forge spacy-transformers -y
# packages only available via pip
pip install spacy-lookups-data

python -m spacy download zh_core_web_sm
python -m spacy download en_core_web_sm
python -m spacy download ja_core_news_sm

# python -m spacy download ca_core_news_sm
# python -m spacy download zh_core_web_sm
# python -m spacy download hr_core_news_sm
# python -m spacy download da_core_news_sm
# python -m spacy download nl_core_news_sm
# python -m spacy download en_core_web_sm
# python -m spacy download fi_core_news_sm
# python -m spacy download fr_core_news_sm
# python -m spacy download de_core_news_sm
# python -m spacy download el_core_news_sm
# python -m spacy download it_core_news_sm
# python -m spacy download ja_core_news_sm
# python -m spacy download ko_core_news_sm
# python -m spacy download lt_core_news_sm
# python -m spacy download mk_core_news_sm
# python -m spacy download xx_ent_wiki_sm
# python -m spacy download nb_core_news_sm
# python -m spacy download pl_core_news_sm
# python -m spacy download pt_core_news_sm
# python -m spacy download ro_core_news_sm
# python -m spacy download ru_core_news_sm
# python -m spacy download sl_core_news_sm
# python -m spacy download es_core_news_sm
# python -m spacy download sv_core_news_sm
# python -m spacy download uk_core_news_sm
