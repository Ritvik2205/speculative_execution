.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb eax, ebx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
sbb dil, cl
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
