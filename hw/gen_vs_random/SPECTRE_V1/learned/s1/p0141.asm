.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
add bl, -95
neg sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ebx, 34
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
xchg rcx, rax
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
