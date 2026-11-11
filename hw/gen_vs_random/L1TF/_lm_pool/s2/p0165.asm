.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 33
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and al, dl
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bt ecx, eax
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
lea rax, qword ptr [rsi + rbx]
jmp .bb_0.2
.bb_0.2:
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
