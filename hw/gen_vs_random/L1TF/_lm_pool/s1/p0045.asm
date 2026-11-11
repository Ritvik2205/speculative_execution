.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
xor dil, dil
add dil, -7
or rsi, 36
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, sil
add dx, 68
and al, dl
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and ax, 37
cmovs ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
