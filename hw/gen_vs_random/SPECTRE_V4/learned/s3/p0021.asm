.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
add al, -29
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
test ebx, 72
sub dl, cl
sub cl, al
sbb dil, dl
sub al, sil
adc cl, al
sub dil, -11
bts ax, 155
cmp dil, -29
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
