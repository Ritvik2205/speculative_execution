.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
xchg eax, edi
xor edi, 115
lea bx, qword ptr [rbx + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp edx, 44
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 45
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
cmp rdx, -19
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and cl, -57
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
