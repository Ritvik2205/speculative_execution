.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
or bl, cl
jmp .bb_0.4
.bb_0.4:
bt esi, ecx
sbb cl, dil
js .bb_0.5
jmp .exit_0
.bb_0.5:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
cmp dil, 60
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
