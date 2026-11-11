.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 79
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
lea eax, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
or dil, -113
sub al, 26
jmp .bb_0.2
.bb_0.2:
btc esi, eax
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
add dil, al
and cl, cl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
