.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, cx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor edx, 94
or al, -17
test al, cl
test rsi, 35
and sil, al
or sil, dl
bt cx, di
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 100
or al, 54
xor rax, -345061362
or sil, -78
and bx, 77
xor sil, dil
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
