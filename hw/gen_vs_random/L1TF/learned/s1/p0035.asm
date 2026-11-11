.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and ax, 37
mov cl, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and al, -68
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
