.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
sub eax, 3
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, dil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
add dl, dil
test esi, 51
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
