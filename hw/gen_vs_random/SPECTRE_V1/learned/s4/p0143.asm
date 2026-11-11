.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 28
cmp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul rax, rax, 30
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
add cl, -71
cmovl ax, cx
adc eax, 89
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
bts rsi, rcx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
