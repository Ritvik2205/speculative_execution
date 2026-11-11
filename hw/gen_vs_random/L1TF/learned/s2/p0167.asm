.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 72
and al, -68
cmovno rax, rcx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
