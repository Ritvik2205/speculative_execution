.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or bl, dil
and bl, 68
xor al, dil
jmp .bb_0.1
.bb_0.1:
test bl, 65
xor sil, cl
btc di, 233
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor cl, sil
or dil, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
test dil, al
or al, cl
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
