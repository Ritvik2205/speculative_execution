.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 54
and dil, dl
or bl, 43
test rcx, -613256812
btc dx, 146
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
xor al, bl
bt dx, cx
bt ax, cx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 30
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
