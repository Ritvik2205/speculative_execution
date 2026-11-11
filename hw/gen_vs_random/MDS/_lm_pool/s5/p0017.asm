.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
test al, -7
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rax, 4
test al, -81
btc esi, 199
xor cx, -18
test eax, -409834435
xor dil, -124
xor dil, 8
jmp .bb_0.1
.bb_0.1:
or al, 74
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
btr cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
