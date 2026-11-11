.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdx, -19
not eax
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
adc al, dil
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 74
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
