require '../practice-for-ch-ruby-poly-tree-node-long-practice-main/lib/tree_node.rb'
require 'byebug'

class KnightPathFinder

    attr_reader :root_node, :start_pos, :considered_positions
    def initialize(start_pos)
        @start_pos = start_pos
        @considered_positions = [@start_pos]
        @root_node = PolyTreeNode.new(start_pos)
        # self.build_move_tree
    end

    def self.valid_moves(pos)
        r, c = pos
        possible_pos = []
        #generate 8 possible positions
        possible_pos << [r+2,c+1]
        possible_pos << [r+2,c-1]
        possible_pos << [r-2,c+1]
        possible_pos << [r-2,c-1]
        possible_pos << [r+1,c+2]
        possible_pos << [r-1,c-2]
        possible_pos << [r+1,c-2]
        possible_pos << [r-1,c+2]
        #check which positions are valid
        valids = possible_pos.select{|indices|  indices[0].between?(0,7) && indices[1].between?(0,7)}
        valids
    end

<<<<<<< HEAD
    def build_move_tree(t_node)
        queue = []
        queue << new_move_positions(root_node.value)
        until queue.first == t_node
            


        end
=======
    def build_move_tree()

>>>>>>> 12d5a3f7a42f9ba3dd3f05b2c498e1544bfd6ae0
    end

    def new_move_positions(pos)
        new_pos = []

        KnightPathFinder.valid_moves(pos).each do |v_pos|
            if !considered_positions.include?(v_pos)
                new_pos << v_pos
                considered_pos << v_pos
            end
        end
        return new_pos
    end

end

if $PROGRAM_NAME == __FILE__
    p kpf = KnightPathFinder.new([1,1])

    # p KnightPathFinder.valid_moves([7,7])
    p kpf.new_move_positions([1,1])
    p kpf.new_move_positions([2,3])


end
