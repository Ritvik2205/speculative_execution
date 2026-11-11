.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
sub sil, -18
cmp rcx, 42
sub bl, dil
xor cl, al
sub dil, cl
add dx, -90
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test sil, 13
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
