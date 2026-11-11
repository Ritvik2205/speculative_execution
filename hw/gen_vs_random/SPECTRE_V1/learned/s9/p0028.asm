.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
cmp cl, sil
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sbb eax, 99727957
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -75
xchg bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
lea ecx, qword ptr [rbx]
or rbx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
