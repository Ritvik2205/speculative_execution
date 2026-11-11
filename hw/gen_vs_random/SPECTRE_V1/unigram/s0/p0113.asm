.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 25
add dl, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
sub cl, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 64
add dl, -73 # instrumentation
btr di, dx
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 33
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
cmovnbe rdi, rbx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
