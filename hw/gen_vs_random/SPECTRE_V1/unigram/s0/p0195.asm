.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edx, eax
setp dil
lea ax, qword ptr [rbx + rdx + 32397]
cmp rdx, -19
mov al, cl
sub al, sil
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 41
js .bb_0.1
jmp .exit_0
.bb_0.1:
test di, 15
add al, 126 # instrumentation
cmovnl dx, ax
adc cl, al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
