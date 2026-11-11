.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and al, cl
add bl, cl
or al, -48
cmp bl, dl
jmp .bb_0.1
.bb_0.1:
cmp di, -78
xor sil, cl
xor cl, dil
or dil, -113
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
