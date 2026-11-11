.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rcx + rbx + 19444]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb ecx, edi
btr rcx, 158
add al, 110 # instrumentation
movzx di, dl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul edi
add cl, 103 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
lea rbx, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
