.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
not bl
xor bl, dil
test cl, 25
lea rdx, qword ptr [rbx + rax]
bts esi, 57
bt edi, eax
setb bl
btc ax, di
cmp ax, -14781
sub si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
