.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
test ax, -20900
and di, 91
and sil, cl
and al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dil, -39
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and al, -55
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
or dil, dl
xor dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
