.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -35
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
add al, 40
sbb dil, 66
sub al, dil
and al, 100
xor bl, dl
xchg rcx, rax
sub al, cl
cmp al, 114
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
test al, 72
add al, cl
sbb al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
