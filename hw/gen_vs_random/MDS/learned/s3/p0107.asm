.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 52
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or sil, -78
xor cl, al
or al, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
test al, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
test dl, dil
xor dl, al
or bl, 13
btr ax, dx
and al, -8
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
