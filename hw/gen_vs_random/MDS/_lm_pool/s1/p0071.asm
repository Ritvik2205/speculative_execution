.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 30
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or bl, al
test ecx, -1843375753
test rsi, 95
and dil, dl
xor rsi, -117
or cl, 6
xor al, -89
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
or al, 54
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and al, -103
and bl, dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
