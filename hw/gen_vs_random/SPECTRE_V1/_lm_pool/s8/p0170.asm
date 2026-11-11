.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
inc al
and al, -54
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
sub cl, -47
sub cl, -47
lea ecx, qword ptr [rax]
test cl, -24
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
test al, 42
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
