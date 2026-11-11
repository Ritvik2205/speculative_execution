.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
test al, dl
or al, 100
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
test cl, -33
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
