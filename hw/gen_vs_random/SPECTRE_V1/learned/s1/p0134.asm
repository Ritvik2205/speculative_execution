.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 8
and ax, 2806
lea rax, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
xchg bl, al
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
not cx
mov sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
