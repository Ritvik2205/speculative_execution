.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
sub sil, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
test al, -82
not rdi
and al, -68
xor cl, dil
xor bl, cl
add dl, -1
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
