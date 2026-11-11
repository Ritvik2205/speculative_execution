.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
add bl, 70
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
sub rcx, 13
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 94
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
