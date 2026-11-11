.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 14
adc al, -92
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, bl
xor al, al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
adc eax, -655457029
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
sub dil, dil
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
lea si, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
