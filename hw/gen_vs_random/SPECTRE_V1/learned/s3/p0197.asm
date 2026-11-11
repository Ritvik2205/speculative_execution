.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
cmp dil, -78
lea bx, qword ptr [rcx + rdx]
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, cl
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
