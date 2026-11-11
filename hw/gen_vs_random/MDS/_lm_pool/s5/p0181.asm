.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
xor al, 34
xor sil, 110
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
bt di, dx
or al, bl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
test dl, -119
test dl, bl
xor dx, 88
and sil, cl
or cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
