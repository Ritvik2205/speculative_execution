.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 72
lea rdi, qword ptr [rdx + rsi]
or esi, -74
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovle dx, cx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 95 # instrumentation
cmovnb rcx, rbx
mov al, -28
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], 45
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and edi, edi
sbb al, al
dec sil
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
