.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor sil, al
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or ax, -20176
and sil, -9
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and sil, cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or ax, -20176
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
