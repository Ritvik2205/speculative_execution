.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
sub cl, al
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
test dl, -37
and al, -68
test rdi, 87
or sil, -44
xor cl, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
