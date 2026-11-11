.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
test dil, dl
jmp .bb_0.1
.bb_0.1:
xor dl, 9
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rdi, 84
and rax, 1163013815
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
cmovbe ecx, eax
or al, -57
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
