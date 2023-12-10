IMAGES=`find ./target/`

for file in `ls target/`; do
  waifu2x-ncnn-vulkan -s 2 -i ./target/$file -o ./size/$file
done;

for file in `ls target/`; do
  waifu2x-ncnn-vulkan -n 3 -i ./size/$file -o ./noise/$file
done;
