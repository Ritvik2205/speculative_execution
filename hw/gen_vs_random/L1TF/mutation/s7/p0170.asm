.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
inc cl
test rdi, rsi
xor dil, -42
cmovnl si, bx
mov esi, -1776760885
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
inc dil
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
add cl, bl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
btr rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
