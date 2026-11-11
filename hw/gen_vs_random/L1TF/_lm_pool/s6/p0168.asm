.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
add rbx, 99
cmp rbx, 40
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 43
btc bx, di
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 35
sbb al, 61
lea rdx, qword ptr [rcx + rbx]
xor cl, 89
add al, bl
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
