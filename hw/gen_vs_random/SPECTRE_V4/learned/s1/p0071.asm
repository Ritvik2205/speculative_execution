.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -83
and bl, dl
sub al, 69
test sil, -119
cmp bl, cl
dec sil
sub cl, dl
sub cl, -127
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or ax, -26182
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 72
sub dl, sil
btc rdx, rcx
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
