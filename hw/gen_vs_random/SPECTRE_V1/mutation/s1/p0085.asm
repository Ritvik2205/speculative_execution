.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
mov rbx, rdx
mul dil
add bl, -15 # instrumentation
movzx cx, dil
cmovnle rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
mov dl, cl
cmp al, 77
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
lea rdx, qword ptr [rax + rcx + 48576]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
