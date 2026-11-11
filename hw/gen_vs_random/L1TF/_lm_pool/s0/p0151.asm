.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
or sil, -44
cmp rcx, 12
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
bt edx, esi
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
and cl, 21
setp cl
btc si, dx
test bl, 45
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
