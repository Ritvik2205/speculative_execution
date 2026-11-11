.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
setb al
cmp dil, -78
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 74
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
add bl, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 36
add cl, 72 # instrumentation
cmovnl si, di
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
adc cl, -19
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
xor eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
