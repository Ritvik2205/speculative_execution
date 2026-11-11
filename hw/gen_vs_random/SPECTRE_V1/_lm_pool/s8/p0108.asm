.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb dl, 127
add sil, -68
test cl, -62
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 48
lea rdx, qword ptr [rsi]
sbb bl, dil
or sil, al
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 75
btc edx, 169
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
