.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
xchg cl, bl
and rax, 2134929425
add al, -109
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
xor cl, al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
add al, al
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
