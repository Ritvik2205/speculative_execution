.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
mov rbx, rdx
add cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
mul dil
add bl, -15 # instrumentation
movzx cx, dil
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
cmovnle rax, rbx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rdx, qword ptr [rax + rcx + 48576]
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmp al, 77
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
mov dl, cl
jmp .bb_0.2
.bb_0.2:
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
