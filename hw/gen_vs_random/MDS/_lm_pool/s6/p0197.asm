.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
bts rsi, rax
jmp .bb_0.1
.bb_0.1:
or edx, esi
jmp .bb_0.2
.bb_0.2:
test dil, -80
xor al, cl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
test dl, -85
xor sil, dil
jmp .bb_0.3
.bb_0.3:
test ecx, -1843375753
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
