.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
