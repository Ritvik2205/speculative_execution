.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -104
test rcx, -613256812
and ax, -12519
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
or rbx, -77
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
or cx, 39
test dil, -80
xor al, 34
jmp .bb_0.2
.bb_0.2:
or al, -61
jmp .bb_0.3
.bb_0.3:
xor dil, 81
and dl, -73
and cl, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
