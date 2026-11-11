.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
xor al, 8
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
xor cl, 24
test di, 6
btr ebx, edi
test rdi, 52
xor bl, dil
and al, bl
btc ax, cx
btc cx, 115
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
or bl, -125
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
