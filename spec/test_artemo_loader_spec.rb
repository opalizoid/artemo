require 'tempfile'

require 'artemo'

str = %q{
"Zarathustra" is my brother's most personal work; it is the history of
his most individual experiences, of his friendships, ideals, raptures,
bitterest disappointments and sorrows. Above it all, however, there
soars, transfiguring it, the image of his greatest hopes and remotest
aims. My brother had the figure of Zarathustra in his mind from his very
earliest youth: he once told me that even as a child he had dreamt of
him. At different periods in his life, he would call this haunter of his
dreams by different names; "but in the end," he declares in a note on
the subject, "I had to do a PERSIAN the honour of identifying him with
this creature of my fancy. Persians were the first to take a broad and
comprehensive view of history. Every series of evolutions, according
to them, was presided over by a prophet; and every prophet had his
'Hazar,'--his dynasty of a thousand years."

All Zarathustra's views, as also his personality, were early conceptions
of my brother's mind. Whoever reads his posthumously published writings
for the years 1869-82 with care, will constantly meet with passages
suggestive of Zarathustra's thoughts and doctrines. For instance, the
ideal of the Superman is put forth quite clearly in all his writings
during the years 1873-75; and in "We Philologists", the following
remarkable observations occur:--

"How can one praise and glorify a nation as a whole?--Even among the
Greeks, it was the INDIVIDUALS that counted."

"The Greeks are interesting and extremely important because they reared
such a vast number of great individuals. How was this possible? The
question is one which ought to be studied.

"I am interested only in the relations of a people to the rearing of
the individual man, and among the Greeks the conditions were unusually
favourable for the development of the individual; not by any means owing
to the goodness of the people, but because of the struggles of their
evil instincts.
}

describe Loader do
  context 'Created words from text' do
    it 'should class be Array' do
      Tempfile.open("test.txt") do |f|
        f.write(str)
        f.close
        k = Loader.call(f)
        expect(k).to be_instance_of Array
      end
    end

    it 'should class be Array' do
      Tempfile.open("test.txt") do |f|
        f.write(str)
        f.close
        k = Loader.call(f)
        expect(k).to be_instance_of Array
      end
    end
  end
end

