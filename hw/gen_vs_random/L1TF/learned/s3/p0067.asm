.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
xor al, 16
sub sil, -99
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bl, dl
jmp .bb_0.1
.bb_0.1:
add cl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 74
bt ecx, eax
add bl, cl
test rax, rbx
or dil, al
xor bl, al
or al, -5
xor cl, 89
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
