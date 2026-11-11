.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
mov al, al
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, cl
bt ecx, 198
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 85
cbw
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
xchg esi, edx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 48
add rbx, 97
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovns rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
