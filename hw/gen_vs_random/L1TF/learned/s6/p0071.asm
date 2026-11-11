.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
lea di, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmp ax, -6940
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 62
btc cx, bx
xor dl, 9
and bl, 89
cmp sil, -11
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
