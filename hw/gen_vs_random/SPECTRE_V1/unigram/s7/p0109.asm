.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
imul eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and edx, edx
imul cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -62 # instrumentation
setnb dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
cmovno ecx, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 70
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
xchg dil, sil
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
