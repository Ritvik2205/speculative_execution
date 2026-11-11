.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
cmp eax, -563371897
sub al, cl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
sbb bl, cl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and di, 54
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
lea rbx, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
