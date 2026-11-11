.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 45
cmovl di, cx
bt edx, 24
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
cmovnb cx, ax
or sil, sil
cmovnbe di, di
setns dil
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
add cl, 63 # instrumentation
cmovl cx, dx
add bl, 73 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
sbb cl, -122
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 19
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 77
add al, -125 # instrumentation
cmovb ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
