.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
sbb cl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
adc al, -82
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and ax, 23118
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
