.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
btr ebx, edi
test dl, -95
or dl, -21
bt di, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 94
btc si, 43
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test al, 91
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
test eax, 298249463
bt eax, edx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
