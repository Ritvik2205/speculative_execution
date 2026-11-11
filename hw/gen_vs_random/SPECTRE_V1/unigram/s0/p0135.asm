.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ecx, 1
sbb dl, cl
and esi, 77
cmovb eax, esi
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 55
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -76 # instrumentation
cmovnle bx, cx
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
adc sil, -77
setnle sil
movzx ecx, di
cmovle ecx, edx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 6
sbb sil, -78
xor al, -119
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
