.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, dx
sbb eax, -1165635662
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
bts edi, 73
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
