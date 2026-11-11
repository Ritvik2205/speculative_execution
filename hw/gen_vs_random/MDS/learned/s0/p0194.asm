.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
xor al, 115
or rdi, -11
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
or al, -22
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test al, sil
not cl
test cl, 62
bt bx, di
or rdx, -109
and bl, 68
xor rax, -843636050
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rax, -636362975
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
