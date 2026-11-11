.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -122
xor rbx, 61
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
setnp sil
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 15
lea rdi, qword ptr [rbx + rdx + 95]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
sub al, 10
add bl, -108 # instrumentation
sbb dil, 23
xor dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
cmovnp rdi, rbx
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
