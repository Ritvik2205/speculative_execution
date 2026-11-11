.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 19
imul ax, si
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
setnbe al
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
add dl, 109 # instrumentation
sbb cl, 80
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
bt rsi, rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor sil, 84
btc di, 237
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
sub al, sil
lea esi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
