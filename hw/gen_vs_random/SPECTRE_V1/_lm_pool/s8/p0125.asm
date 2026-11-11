.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
adc dil, 14
cmp rcx, 100
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor cl, sil
jmp .bb_0.2
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
sbb al, cl
jmp .bb_0.4
.bb_0.4:
add cl, bl
not di
adc al, -92
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
cmovnbe rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
