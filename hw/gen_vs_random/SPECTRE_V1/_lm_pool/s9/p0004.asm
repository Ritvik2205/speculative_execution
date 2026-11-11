.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
lea rbx, qword ptr [rax + rcx + 76]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
sub al, dl
sub dl, al
jnbe .bb_0.4
jmp .bb_0.5
.bb_0.4:
jle .bb_0.5
jmp .exit_0
.bb_0.5:
mov bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
