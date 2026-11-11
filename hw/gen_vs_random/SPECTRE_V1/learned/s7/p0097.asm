.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 58
sub al, 63
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
xor dl, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
cmp sil, cl
xchg dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
