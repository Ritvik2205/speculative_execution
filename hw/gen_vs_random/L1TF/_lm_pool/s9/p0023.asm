.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
bt rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sbb al, 92
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
bswap rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
