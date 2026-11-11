.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, cx
xor cl, 98
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or al, 54
or al, bl
sub dil, 100
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
test bl, -14
test dil, -80
xor cl, 55
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
xor rdi, -9
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
