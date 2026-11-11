.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 112 # instrumentation
sbb ebx, 31
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
sets bl
cmovnz cx, di
sbb al, al
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 18
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
cmovnp cx, ax
cmovnle si, dx
sbb bl, bl
btc bx, ax
not rsi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
