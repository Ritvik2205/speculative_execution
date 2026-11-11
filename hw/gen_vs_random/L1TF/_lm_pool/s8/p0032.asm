.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test sil, 29
and al, -68
and cl, 69
test al, sil
sub al, -47
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test eax, -2032743474
xor si, -50
and rcx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
