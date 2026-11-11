.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
test al, -75
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea bx, qword ptr [rax + rsi]
and bl, -65
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
lea si, qword ptr [rbx + rsi + 81]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 20
sbb dl, 127
test sil, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
