.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -5
adc al, dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
not dil
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and dil, -22
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
sub cl, 86
add dil, sil
test bl, 45
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
