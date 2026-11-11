.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
btr ecx, edi
or rcx, 54
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test eax, 343548072
xor cl, 24
or al, al
xor al, 9
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
