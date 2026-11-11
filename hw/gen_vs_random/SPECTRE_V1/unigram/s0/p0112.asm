.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 89
btr ebx, 35
lea cx, qword ptr [rdx + rsi + 28]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cmp di, 41
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
add bl, -118 # instrumentation
cmovp dx, dx
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rax + rbx + 70]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add dil, -47 # instrumentation
setbe dil
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
