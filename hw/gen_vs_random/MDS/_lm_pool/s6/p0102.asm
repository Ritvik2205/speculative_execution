.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
test dl, cl
jmp .bb_0.1
.bb_0.1:
or rdi, -11
or cl, 39
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or al, -22
or sil, cl
bt ax, bx
btc ebx, 149
test eax, -409834435
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
