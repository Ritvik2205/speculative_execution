.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
xor bl, -27
or bl, sil
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rbx
and bl, 68
and di, 99
xor cx, -18
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or bl, al
test cl, 91
or dl, cl
xor ax, -1005
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
