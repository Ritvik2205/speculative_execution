.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
btc cx, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 45
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 19
mov eax, 66
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
sub ax, -27107
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
lea rcx, qword ptr [rsi]
bt rcx, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
