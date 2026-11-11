.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
test sil, 29
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
