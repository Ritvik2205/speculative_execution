.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 68
xor al, 38
xor eax, 965442135
not sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
sbb cl, bl
jmp .bb_0.1
.bb_0.1:
test sil, 29
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
or al, dl
and al, -68
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
jmp .bb_0.4
.bb_0.4:
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
