	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/990524-1.c"
	.globl	loop
	.type	loop,@function
loop:                                   # @loop
	.param  	i32, i32
	.local  	i32, i32, i32, i32
# BB#0:                                 # %entry
BB0_1:                                  # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB0_8
	i32.load8_u	$push0=, 0($1)
	i32.store8	$4=, 0($0), $pop0
	i32.const	$5=, 24
	i32.shl 	$push1=, $4, $5
	i32.shr_s	$3=, $pop1, $5
	i32.const	$5=, 1
	i32.add 	$2=, $1, $5
	block   	BB0_7
	i32.const	$push2=, 34
	i32.eq  	$push3=, $4, $pop2
	br_if   	$pop3, BB0_7
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	i32.const	$push4=, 92
	i32.eq  	$push5=, $3, $pop4
	br_if   	$pop5, BB0_7
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	i32.add 	$0=, $0, $5
	copy_local	$1=, $2
	br_if   	$3, BB0_1
# BB#4:                                 # %loopDone2
	block   	BB0_6
	i32.const	$push10=, a
	i32.sub 	$push11=, $pop10, $0
	i32.const	$push12=, b
	i32.sub 	$push13=, $pop12, $2
	i32.ne  	$push14=, $pop11, $pop13
	br_if   	$pop14, BB0_6
# BB#5:                                 # %if.end
	return
BB0_6:                                  # %if.then
	call    	abort
	unreachable
BB0_7:                                  # %sw.bb2
                                        #   in Loop: Header=BB0_1 Depth=1
	i32.const	$push6=, 92
	i32.store8	$discard=, 0($0), $pop6
	i32.const	$push8=, 2
	i32.add 	$4=, $0, $pop8
	i32.add 	$push9=, $0, $5
	i32.load8_u	$push7=, 0($1)
	i32.store8	$discard=, 0($pop9), $pop7
	copy_local	$0=, $4
	copy_local	$1=, $2
	br      	BB0_1
BB0_8:
func_end0:
	.size	loop, func_end0-loop

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, b
	i32.const	$4=, a
BB1_1:                                  # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB1_8
	i32.load8_u	$push0=, 0($0)
	i32.store8	$2=, 0($4), $pop0
	i32.const	$3=, 24
	i32.shl 	$push1=, $2, $3
	i32.shr_s	$1=, $pop1, $3
	i32.const	$3=, 1
	i32.add 	$0=, $0, $3
	block   	BB1_7
	i32.const	$push2=, 34
	i32.eq  	$push3=, $2, $pop2
	br_if   	$pop3, BB1_7
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB1_1 Depth=1
	i32.const	$push4=, 92
	i32.eq  	$push5=, $1, $pop4
	br_if   	$pop5, BB1_7
# BB#3:                                 # %for.cond.i
                                        #   in Loop: Header=BB1_1 Depth=1
	i32.add 	$4=, $4, $3
	br_if   	$1, BB1_1
# BB#4:                                 # %loopDone2.i
	block   	BB1_6
	i32.const	$push9=, a
	i32.sub 	$push10=, $pop9, $4
	i32.const	$push11=, b
	i32.sub 	$push12=, $pop11, $0
	i32.ne  	$push13=, $pop10, $pop12
	br_if   	$pop13, BB1_6
# BB#5:                                 # %loop.exit
	i32.const	$push14=, 0
	call    	exit, $pop14
	unreachable
BB1_6:                                  # %if.then.i
	call    	abort
	unreachable
BB1_7:                                  # %sw.bb2.i
                                        #   in Loop: Header=BB1_1 Depth=1
	i32.const	$push6=, 92
	i32.store8	$discard=, 0($4), $pop6
	i32.const	$push7=, 2
	i32.add 	$1=, $4, $pop7
	i32.add 	$push8=, $4, $3
	i32.store8	$discard=, 0($pop8), $2
	copy_local	$4=, $1
	br      	BB1_1
BB1_8:
func_end1:
	.size	main, func_end1-main

	.type	a,@object               # @a
	.data
	.globl	a
a:
	.asciz	"12345"
	.size	a, 6

	.type	b,@object               # @b
	.globl	b
b:
	.asciz	"12345"
	.size	b, 6


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits