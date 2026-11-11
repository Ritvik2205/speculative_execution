.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
test sil, al
or al, al
test cl, al
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
xor dl, bl
or al, cl
test rsi, 78
bt cx, dx
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test al, cl
or al, -22
or al, bl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
