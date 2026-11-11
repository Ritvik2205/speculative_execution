.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
setns cl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
or dl, al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
lea rsi, qword ptr [rdi]
sbb dl, cl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
