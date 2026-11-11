.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 77
dec dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 20
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 48
mov cl, cl
add sil, 36
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
sbb rax, 1380680934
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -31
lea di, qword ptr [rbx + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add cl, 75 # instrumentation
sbb bl, sil
lea rbx, qword ptr [rcx + rax]
lea ebx, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
