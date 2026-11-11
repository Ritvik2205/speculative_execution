.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
sub rdx, 44
lea rax, qword ptr [rdx]
and al, -68
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
