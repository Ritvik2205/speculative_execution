.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
not bl
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
xor al, dil
cmp dl, sil
add al, -46
and al, -68
bt ebx, edx
and edx, 4
test al, -84
or cl, 105
test al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
