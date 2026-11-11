.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
inc bl
sbb sil, -78
lea ax, qword ptr [rdi + rsi]
xchg sil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
test dil, -116
and al, 33
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
