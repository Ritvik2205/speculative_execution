.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts bx, bx
lea ebx, qword ptr [rcx]
cmp cl, dil
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor al, cl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
mov bl, al
test cl, dil
sbb di, -122
sbb ax, -17107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
