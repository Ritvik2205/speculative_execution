.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
movzx dx, dl
test sil, 97
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
jp .bb_0.1
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
