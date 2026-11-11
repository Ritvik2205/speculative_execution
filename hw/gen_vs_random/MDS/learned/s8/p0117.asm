.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or al, 16
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
xor dil, -5
and rax, 627810357
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 37
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and sil, sil
xor al, sil
or bl, cl
jmp .bb_0.1
.bb_0.1:
and ax, -122
xor rsi, -117
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 96
bt di, bx
bt cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
