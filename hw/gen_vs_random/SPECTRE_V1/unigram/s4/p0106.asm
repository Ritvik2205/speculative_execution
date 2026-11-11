.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
add dl, -77 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 17
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
dec dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, 25
lea di, qword ptr [rax + rdi + 4281]
lea rdx, qword ptr [rbx + rsi]
adc bl, bl
adc cx, -30
cmp rcx, rdx
mul dil
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
add bl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
