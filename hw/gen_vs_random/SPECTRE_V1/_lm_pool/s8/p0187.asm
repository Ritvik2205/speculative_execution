.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 80
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .bb_0.4
.bb_0.3:
mov al, dil
jp .bb_0.4
jmp .bb_0.5
.bb_0.4:
lea di, qword ptr [rcx]
sub cl, -21
jb .bb_0.5
jmp .exit_0
.bb_0.5:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
