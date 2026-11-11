.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
cmp rdx, 42
test al, -104
or si, 40
test sil, 29
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 41
cmovb bx, ax
sub al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
