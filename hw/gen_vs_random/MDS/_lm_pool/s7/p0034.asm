.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
and ecx, -104
or bl, 43
bts rax, rcx
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
xor al, -4
xor dl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and ax, 339
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor bl, al
bt cx, bx
and bx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
