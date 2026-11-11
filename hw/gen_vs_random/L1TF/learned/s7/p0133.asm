.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
lea rax, qword ptr [rbx]
xor bl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
sub dil, al
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
and cl, dl
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
