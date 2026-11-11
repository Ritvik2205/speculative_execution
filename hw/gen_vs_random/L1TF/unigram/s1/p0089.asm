.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
cmovb eax, eax
setns al
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
btc bx, ax
or bl, 114
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
add eax, 109
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sub cl, -49
cmovnz ebx, edi
add di, 98
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
