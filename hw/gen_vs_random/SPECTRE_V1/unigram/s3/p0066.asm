.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, esi, -3
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
add al, -117 # instrumentation
not rdx
mov al, 7
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 18
cmovle ecx, esi
lea cx, qword ptr [rax + rsi]
add dl, 20 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 9
add sil, -9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx + rdi]
add rsi, 109
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
add al, 40 # instrumentation
btc rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
