.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
cmp edi, 11
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cbw
sub dl, -34
add bl, cl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
cmovle rax, rdx
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and edx, 58
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
