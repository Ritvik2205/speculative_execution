.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 89
or cl, -77
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
test dl, cl
and ax, 31082
xor dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
test bl, 65
xor cl, 15
or al, -61
or eax, edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
jmp .bb_0.1
.bb_0.1:
test al, 127
not bl
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
