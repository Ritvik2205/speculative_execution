.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 2806
test al, -126
and ax, -22629
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
test al, 42
xor cl, 78
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 7
add al, -72
movsx ebx, bl
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
cmovnle rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
