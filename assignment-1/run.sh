echo "started..."

mvn package

echo "standard vsm run"
java -jar target/assignment-1-1.0-SNAPSHOT.jar standard vsm
echo "standard bm25 run"
java -jar target/assignment-1-1.0-SNAPSHOT.jar standard bm25
echo "whitespace vsm run"
java -jar target/assignment-1-1.0-SNAPSHOT.jar whitespace vsm
echo "whitespace bm25 run"
java -jar target/assignment-1-1.0-SNAPSHOT.jar whitespace bm25
echo "english vsm run"
java -jar target/assignment-1-1.0-SNAPSHOT.jar english vsm
echo "english bm25 run"
java -jar target/assignment-1-1.0-SNAPSHOT.jar english bm25
echo "finished..."
echo "english analyzer: vector space model"
trec_eval/trec_eval -m runid -m map -m gm_map -m P.5 ../corpus/QRelsCorrectedforTRECeval results/EnglishAnalyzerVSM.test
echo "english analyzer: bm25"
trec_eval/trec_eval -m runid -m map -m gm_map -m P.5 ../corpus/QRelsCorrectedforTRECeval results/EnglishAnalyzerBM25.test
echo "standard analyzer: vector space model"
trec_eval/trec_eval -m runid -m map -m gm_map -m P.5 ../corpus/QRelsCorrectedforTRECeval results/StandardAnalyzerVSM.test
echo "standard analyzer: bm25"
trec_eval/trec_eval -m runid -m map -m gm_map -m P.5 ../corpus/QRelsCorrectedforTRECeval results/StandardAnalyzerBM25.test
echo "whitespace analyzer: vector space model"
trec_eval/trec_eval -m runid -m map -m gm_map -m P.5 ../corpus/QRelsCorrectedforTRECeval results/WhitespaceAnalyzerVSM.test
echo "whitespace analyzer: bm25"
trec_eval/trec_eval -m runid -m map -m gm_map -m P.5 ../corpus/QRelsCorrectedforTRECeval results/WhitespaceAnalyzerBM25.test
