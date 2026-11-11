.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
test cl, 97
adc sil, cl
xchg ecx, eax
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
lea cx, qword ptr [rbx + rcx + 18]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
