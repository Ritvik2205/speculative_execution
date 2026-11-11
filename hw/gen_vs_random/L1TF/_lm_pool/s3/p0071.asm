.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
xor al, dil
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or sil, dil
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
add sil, -61
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or ax, 11821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
