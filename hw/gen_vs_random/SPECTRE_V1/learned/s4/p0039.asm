.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
adc sil, -77
sbb al, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
inc ecx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg sil, cl
sub dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
