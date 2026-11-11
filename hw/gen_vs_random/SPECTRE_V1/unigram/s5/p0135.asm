.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle esi, ebx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
test sil, -31
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
btr rdi, rbx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
mul bl
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 9
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
