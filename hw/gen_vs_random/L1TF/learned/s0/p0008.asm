.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe di, dx
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 80
sub dl, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
xor dl, dil
add dl, bl
bts ax, 201
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
