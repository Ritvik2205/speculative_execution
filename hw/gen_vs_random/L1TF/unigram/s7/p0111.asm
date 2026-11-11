.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cx, di
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
setnz dil
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
setno cl
xor bl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 37
imul cx, bx
setb al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and ecx, 20
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
