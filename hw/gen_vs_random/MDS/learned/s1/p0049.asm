.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and dx, 3
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
test cl, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor dl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
jmp .bb_0.3
.bb_0.3:
test rax, -2052112368
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor ax, -5889
jmp .bb_0.4
.bb_0.4:
and ax, 29207
jmp .bb_0.5
.bb_0.5:
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
