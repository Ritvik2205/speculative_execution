.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
or dil, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
bts rax, 77
and cl, dil
or dil, -41
test bl, sil
or al, bl
bt dx, ax
and dl, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
cmovle bx, dx
test al, 66
or al, cl
xor dil, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
