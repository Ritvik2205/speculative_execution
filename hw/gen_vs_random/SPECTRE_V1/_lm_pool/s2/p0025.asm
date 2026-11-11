.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
lea rsi, qword ptr [rdi]
and al, -23
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
lea rax, qword ptr [rdx + rcx]
xchg sil, cl
cmp eax, -563371897
lea ax, qword ptr [rbx + rdi + 55]
xor rax, rcx
setz al
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
