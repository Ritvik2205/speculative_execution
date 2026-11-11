.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or dl, -31
and al, -8
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 38
xor al, bl
xor ax, -16696
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test ecx, -1843375753
or bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test dil, 46
and edi, 23
xor cl, 83
and rsi, 94
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
