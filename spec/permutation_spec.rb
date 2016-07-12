require File.expand_path(File.dirname(__FILE__) + '/../permutation')

describe 'Permutation' do
  it do
    expect([1,2].permutation).to eq [[1,2],[2,1]]
    expect([1,2,3].permutation).to eq [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
    expect([1,2,3].permutation(0)).to eq []
    expect([1,2,3].permutation(1)).to eq [[1],[2],[3]]
    expect([1,2,3].permutation(2)).to eq [[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]]
    expect([1,2,3].permutation(3)).to eq [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
    expect([1,2,3].permutation(4)).to eq []
    expect([1,2,3,4].permutation).to eq [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4], [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2], [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4], [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1], [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4], [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1], [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3], [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]
  end
end
