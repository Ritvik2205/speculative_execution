.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 55
lea si, qword ptr [rdx]
lea cx, qword ptr [rsi]
add dx, -103
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
not dx
sub cl, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or dl, al
sbb dl, sil
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
