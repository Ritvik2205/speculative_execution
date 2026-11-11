.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and di, si
adc bx, cx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
sbb rdx, 98
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
inc dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
test rdi, rsi
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
inc cl
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
btr rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
xor dil, -42
cmovnl si, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
add cl, bl
mov esi, -1776760885
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
