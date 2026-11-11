.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and bl, -43
lea rsi, qword ptr [rdi + rbx + 63]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
sbb sil, -78
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add dil, cl
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
