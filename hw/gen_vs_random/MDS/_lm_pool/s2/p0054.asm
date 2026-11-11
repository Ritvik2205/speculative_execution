.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test al, 22
or eax, esi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or cl, bl
btc bx, dx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor dil, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
xor cl, dil
xor sil, al
and rsi, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
