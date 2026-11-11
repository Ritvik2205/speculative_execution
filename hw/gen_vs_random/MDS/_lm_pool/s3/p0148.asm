.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor al, cl
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
test al, -7
test sil, dil
test edi, -1252846009
or bl, dl
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
