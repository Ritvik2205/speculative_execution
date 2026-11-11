.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
mov rbx, rdx
add bl, -15 # instrumentation
movzx cx, dil
add cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovnle rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
mul dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
cmp al, -77
lea rdx, qword ptr [rax + rcx + 48576]
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
