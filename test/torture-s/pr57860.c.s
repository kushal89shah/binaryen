	.text
	.file	"pr57860.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo                     # -- Begin function foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32, i32, i32
# %bb.0:                                # %entry
	i32.const	$push14=, 0
	i32.load	$4=, f($pop14)
	i32.const	$push13=, 0
	i32.load	$3=, h($pop13)
	i32.const	$push12=, 0
	i32.load	$2=, b($pop12)
	i64.extend_s/i32	$1=, $0
	block   	
	block   	
	i32.const	$push11=, 0
	i32.load	$push0=, c($pop11)
	br_if   	0, $pop0        # 0: down to label1
# %bb.1:
	i32.const	$5=, 1
	br      	1               # 1: down to label0
.LBB0_2:
	end_block                       # label1:
	i32.const	$5=, 0
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	end_block                       # label0:
	loop    	i32             # label2:
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$5, 1, 2, 3, 0, 0 # 1: down to label7
                                        # 2: down to label6
                                        # 3: down to label5
                                        # 0: down to label8
.LBB0_4:                                # %for.inc6
                                        #   in Loop: Header=BB0_3 Depth=1
	end_block                       # label8:
	i32.const	$push17=, 0
	i32.const	$push16=, 1
	i32.add 	$push10=, $0, $pop16
	i32.store	g($pop17), $pop10
	i32.const	$push15=, 0
	i32.load	$push1=, c($pop15)
	i32.eqz 	$push25=, $pop1
	br_if   	3, $pop25       # 3: down to label4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	i32.const	$5=, 0
	br      	5               # 5: up to label2
.LBB0_6:                                # %for.inc.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	end_block                       # label7:
	i32.const	$push19=, 0
	i32.const	$push18=, 0
	i32.store	c($pop19), $pop18
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	i32.const	$5=, 1
	br      	4               # 4: up to label2
.LBB0_8:                                # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	end_block                       # label6:
	i32.const	$push24=, 0
	i64.load32_s	$push2=, a($pop24)
	i64.const	$push23=, 8589934591
	i64.xor 	$push3=, $pop2, $pop23
	i64.load32_s	$push4=, 0($2)
	i64.and 	$push5=, $pop3, $pop4
	i64.lt_s	$0=, $pop5, $1
	i32.store	0($3), $0
	i32.store	0($4), $0
	i32.const	$push22=, 0
	i32.load	$0=, g($pop22)
	i32.const	$push21=, 2
	i32.shl 	$push6=, $0, $pop21
	i32.const	$push20=, k
	i32.add 	$push7=, $pop6, $pop20
	i32.load	$push8=, 0($pop7)
	i32.eqz 	$push26=, $pop8
	br_if   	2, $pop26       # 2: down to label3
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	i32.const	$5=, 2
	br      	3               # 3: up to label2
.LBB0_10:                               # %if.then
	end_block                       # label5:
	i32.const	$push9=, 0
	return  	$pop9
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	end_block                       # label4:
	i32.const	$5=, 1
	br      	1               # 1: up to label2
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	end_block                       # label3:
	i32.const	$5=, 3
	br      	0               # 0: up to label2
.LBB0_13:
	end_loop
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.text.main,"ax",@progbits
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# %bb.0:                                # %entry
	i32.const	$push16=, 0
	i32.load	$2=, f($pop16)
	i32.const	$push15=, 0
	i32.load	$1=, h($pop15)
	i32.const	$push14=, 0
	i32.load	$0=, b($pop14)
	block   	
	block   	
	i32.const	$push13=, 0
	i32.load	$push0=, c($pop13)
	br_if   	0, $pop0        # 0: down to label10
# %bb.1:
	i32.const	$4=, 1
	br      	1               # 1: down to label9
.LBB1_2:
	end_block                       # label10:
	i32.const	$4=, 0
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	end_block                       # label9:
	loop    	i32             # label11:
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$4, 1, 2, 3, 5, 4, 0, 0 # 1: down to label19
                                        # 2: down to label18
                                        # 3: down to label17
                                        # 5: down to label15
                                        # 4: down to label16
                                        # 0: down to label20
.LBB1_4:                                # %for.inc6.i
                                        #   in Loop: Header=BB1_3 Depth=1
	end_block                       # label20:
	i32.const	$push19=, 0
	i32.const	$push18=, 1
	i32.add 	$push12=, $3, $pop18
	i32.store	g($pop19), $pop12
	i32.const	$push17=, 0
	i32.load	$push1=, c($pop17)
	i32.eqz 	$push30=, $pop1
	br_if   	5, $pop30       # 5: down to label14
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	i32.const	$4=, 0
	br      	8               # 8: up to label11
.LBB1_6:                                # %for.inc.lr.ph.i
                                        #   in Loop: Header=BB1_3 Depth=1
	end_block                       # label19:
	i32.const	$push21=, 0
	i32.const	$push20=, 0
	i32.store	c($pop21), $pop20
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	i32.const	$4=, 1
	br      	7               # 7: up to label11
.LBB1_8:                                # %for.end.i
                                        #   in Loop: Header=BB1_3 Depth=1
	end_block                       # label18:
	i32.const	$push27=, 0
	i64.load32_s	$push2=, a($pop27)
	i64.const	$push26=, 8589934591
	i64.xor 	$push3=, $pop2, $pop26
	i64.load32_s	$push4=, 0($0)
	i64.and 	$push5=, $pop3, $pop4
	i64.const	$push25=, 1
	i64.lt_s	$3=, $pop5, $pop25
	i32.store	0($1), $3
	i32.store	0($2), $3
	i32.const	$push24=, 0
	i32.load	$3=, g($pop24)
	i32.const	$push23=, 2
	i32.shl 	$push6=, $3, $pop23
	i32.const	$push22=, k
	i32.add 	$push7=, $pop6, $pop22
	i32.load	$push8=, 0($pop7)
	i32.eqz 	$push31=, $pop8
	br_if   	4, $pop31       # 4: down to label13
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	i32.const	$4=, 2
	br      	6               # 6: up to label11
.LBB1_10:                               # %foo.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	end_block                       # label17:
	i32.const	$push28=, 0
	i32.load	$push9=, d($pop28)
	i32.const	$push10=, 1
	i32.ne  	$push11=, $pop9, $pop10
	br_if   	4, $pop11       # 4: down to label12
# %bb.11:                               #   in Loop: Header=BB1_3 Depth=1
	i32.const	$4=, 4
	br      	5               # 5: up to label11
.LBB1_12:                               # %if.end
	end_block                       # label16:
	i32.const	$push29=, 0
	return  	$pop29
.LBB1_13:                               # %if.then
	end_block                       # label15:
	call    	abort@FUNCTION
	unreachable
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=1
	end_block                       # label14:
	i32.const	$4=, 1
	br      	2               # 2: up to label11
.LBB1_15:                               #   in Loop: Header=BB1_3 Depth=1
	end_block                       # label13:
	i32.const	$4=, 5
	br      	1               # 1: up to label11
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	end_block                       # label12:
	i32.const	$4=, 3
	br      	0               # 0: up to label11
.LBB1_17:
	end_loop
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.hidden	a                       # @a
	.type	a,@object
	.section	.bss.a,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.int32	0                       # 0x0
	.size	a, 4

	.hidden	b                       # @b
	.type	b,@object
	.section	.data.b,"aw",@progbits
	.globl	b
	.p2align	2
b:
	.int32	a
	.size	b, 4

	.hidden	e                       # @e
	.type	e,@object
	.section	.bss.e,"aw",@nobits
	.globl	e
	.p2align	2
e:
	.int32	0                       # 0x0
	.size	e, 4

	.hidden	f                       # @f
	.type	f,@object
	.section	.data.f,"aw",@progbits
	.globl	f
	.p2align	2
f:
	.int32	e
	.size	f, 4

	.hidden	d                       # @d
	.type	d,@object
	.section	.bss.d,"aw",@nobits
	.globl	d
	.p2align	2
d:
	.int32	0                       # 0x0
	.size	d, 4

	.hidden	h                       # @h
	.type	h,@object
	.section	.data.h,"aw",@progbits
	.globl	h
	.p2align	2
h:
	.int32	d
	.size	h, 4

	.hidden	k                       # @k
	.type	k,@object
	.section	.data.k,"aw",@progbits
	.globl	k
	.p2align	2
k:
	.int32	1                       # 0x1
	.size	k, 4

	.hidden	c                       # @c
	.type	c,@object
	.section	.bss.c,"aw",@nobits
	.globl	c
	.p2align	2
c:
	.int32	0                       # 0x0
	.size	c, 4

	.hidden	g                       # @g
	.type	g,@object
	.section	.bss.g,"aw",@nobits
	.globl	g
	.p2align	2
g:
	.int32	0                       # 0x0
	.size	g, 4


	.ident	"clang version 7.0.0 (https://llvm.googlesource.com/clang.git 1f874ca3c3f27c2149b6b33ca4a5966b3577280d) (https://llvm.googlesource.com/llvm.git 2e4bd2aa729dd2c33cdca2b39c971c675e914001)"
	.functype	abort, void
